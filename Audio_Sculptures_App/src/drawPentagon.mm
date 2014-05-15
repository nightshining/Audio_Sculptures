
#include "drawPentagon.h"

drawPentagon::drawPentagon() {
    
    
}

drawPentagon::~drawPentagon() {
    
}

//--------------------------------------------------------------
void drawPentagon::setup(){
    
    sound.loadSound("pentSound.caf");
    sound.play();
    sound.setLoop(true);
    sound.setVolume(0.0);
    objectOn = false;
    sliderPos.set(100, ofGetHeight() - 150);
    sliderSize = 40;
}

//--------------------------------------------------------------
void drawPentagon::update(){
    
    rotateShape += 0.50f;
    
    scaleParaX = varyNoisePent(10.0, controlShape - 0.01);
    scaleParaY = varyNoisePent(5.0, controlShape);
    
    if (objectOn == true) {
        
        volumeNoise = varyNoisePent(1.0, controlVolume);
        sound.setVolume(volumeNoise);
    
    } else {
    
        volumeNoise = 0.0;
        sound.setVolume(volumeNoise);
        
    }
    //alphaCounter += 0.05f;
    //alpha = 200 * sin(alphaCounter);
    
}

//--------------------------------------------------------------
void drawPentagon::draw(){
    
    objectOn = true;
    
    for (int i = 0; i < 250; i += 5) {
        shape(ofGetWidth() / 2, ofGetHeight() / 2, 25, i * PI / 2 + 50);
    }
    
    cirSlider();
    ofSetColor(0);
    //ofDrawBitmapString("Sound Sculpture Control", sliderPos.x + 50, sliderPos.y);

    
}

//--------------------------------------------------------------
void drawPentagon::exit(){
    
}


//--------------------------------------------------------------
void drawPentagon::shape(int x, int y, int size, float alpha) {
    
    ofPushMatrix();
    ofSetCircleResolution(5);
    ofTranslate(x, y);
    ofRotateY(rotateShape * PI);
    ofRotateX(alpha + 50);
    ofRotateZ(rotateShape + alpha);
    ofScale(scaleParaX, scaleParaY);
    //ofSetPolyMode(OF_POLY_WINDING_NONZERO); //odd that this effected other objects
    ofSetColor(0, 0, 0, 80);
    ofNoFill();
    ofCircle(0, 0, size);
    ofPopMatrix();
    
}

//--------------------------------------------------------------
float drawPentagon::varyNoisePent(int amount, float speed){
    
    noise += speed;
    float noiseAlpha = amount * ofNoise(noise);
    return noiseAlpha;
    
    
}


//--------------------------------------------------------------
void drawPentagon::slide(int x, int y){
    
    int dist1 = ofDist(sliderPos.x, sliderPos.y, x, y);
    
    if (dist1 < sliderSize){
        
    controlShape = ofMap(x, 0, ofGetWidth(), 0.0001, 0.07);
    sound.setSpeed(ofMap(x, 0, ofGetWidth(), 0.30, 1.0, true));
    controlVolume = ofMap(x, 0, ofGetWidth(), 0.01, .10);
    
    //slide control
    sliderPos.x = x;
    
    alpha = ofMap(x, 0.0, ofGetWidth() - 100, 0.0, 255);
    }
}

void drawPentagon::cirSlider() {
    
    ofPushMatrix();
    ofSetCircleResolution(100);
    ofTranslate(sliderPos.x, sliderPos.y);
    ofSetColor(0, 0, 0, 150);
    ofNoFill();
    ofCircle(0, 0, sliderSize);
    ofSetColor(0, 0, 0, alpha);
    ofFill();
    ofCircle(0, 0, sliderSize);
    ofPopMatrix();
    
}

