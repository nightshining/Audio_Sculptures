
#include "drawRect.h"

drawRect::drawRect() {
    
    
}

drawRect::~drawRect() {
    
    
}

//--------------------------------------------------------------
void drawRect::setup(){
    
    trackVolume = 0.0;
    sound.loadSound("rectArp.caf");
    sound.play();
    sound.setLoop(true);
    speed = 10.0;
    sound.setVolume(trackVolume);
    sliderPos.set(100, ofGetHeight() - 50);
    sliderSize = 50;
}

//--------------------------------------------------------------
void drawRect::update(){
    
    rotateShape += speed;
    sound.setVolume(trackVolume);
    
}
//--------------------------------------------------------------
void drawRect::draw(){
    
    sound.setVolume(trackVolume);
    
    for (int i = 0; i < 400; i += 25) {
        ofPushMatrix();
        rect(i, i, rotateShape);
        rect(i, i, -rotateShape);
        ofPopMatrix();
    }
    
    rectSlider();
    ofSetColor(0);
    //ofDrawBitmapString("Sound Sculpture Control", sliderPos.x + 50, sliderPos.y);
    
}

void drawRect::exit() {
    
    
}


void drawRect::randomizeColor() {
    
    randomColor = ofRandom(4);
    
    switch (randomColor) {
        case 0:
            randomFill = ofColor::lightGrey;
            break;
        case 1:
            randomFill = ofColor::lightYellow;
            break;
        case 2:
            randomFill = ofColor::lightGreen;
        case 3:
            randomFill = ofColor::lightSkyBlue;
        default:
            randomFill = ofColor::black;
            break;
    }
    
    
}



//--------------------------------------------------------------
void drawRect::rect(int x, int y, float rotate){
    
    ofPushMatrix();
    ofSetColor(randomFill, 15);
    ofFill();
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofScale(.80, .80);
    ofRotateZ(rotate);
    ofRect(0, 0, x, y);
    ofPopMatrix();
    
    //ofDrawBitmapString("Track Speed: " + ofToString(sound.getSpeed()), 100, 100);
    
}

//--------------------------------------------------------------
void drawRect::slide(int x, int y){
    
    int dist1 = ofDist(sliderPos.x, sliderPos.y, x, y);
    
    if (dist1 < sliderSize + 10){
    speed = ofMap(x, 0, ofGetWidth(), 10.0, 0.01);
    sound.setSpeed(ofMap(x, 0, ofGetWidth(), 1.0, 0.0, true));
    
    //slide control
    sliderPos.x = x;
    
    alpha = ofMap(x, 0.0, ofGetWidth() - 100, 0.0, 255);
    }
}

void drawRect::rectSlider() {
    
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
    
    ofPushMatrix();
    ofSetColor(200);
    ofTranslate(sliderPos.x - 20, sliderPos.y);
    ofDrawBitmapString("Slide", 0, 0);
    ofPopMatrix();
    
}




