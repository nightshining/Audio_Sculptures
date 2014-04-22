
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
    
}

//--------------------------------------------------------------
void drawPentagon::update(){
    
    rotateShape += 0.50f;
    
    scaleParaX = varyNoisePent(10.0, controlShape - 0.01);
    scaleParaY = varyNoisePent(5.0, controlShape);
    
    volumeNoise = varyNoisePent(1.0, controlVolume);
    sound.setVolume(volumeNoise);
    
    /*
     alpha1 = varyNoise(100, 0.03f);
     alpha2 = varyNoise(255, 0.001f);
     alpha3 = varyNoise(25, 0.40f);
     alpha4 = varyNoise(50, 0.001f);
     cout << alpha1 << endl;
     */
    
}

//--------------------------------------------------------------
void drawPentagon::draw(){
    
    ofSetCircleResolution(5);
    
    for (int i = 0; i < 250; i += 5) {
        shape(ofGetWidth() / 2, ofGetHeight() / 2, 25, i * PI / 2 + 50);
    }
    
}


//--------------------------------------------------------------
void drawPentagon::shape(int x, int y, int size, float alpha) {
    
    ofPushMatrix();
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
    
    controlShape = ofMap(x, 0, ofGetWidth(), 0.001, 0.03);
    sound.setSpeed(ofMap(x, 0, ofGetWidth(), 0.40, 1.0, true));
    controlVolume = ofMap(x, 0, ofGetWidth(), 0.01, .10);
}


//--------------------------------------------------------------
void drawPentagon::exit(){
    
}
