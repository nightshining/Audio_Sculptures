
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
    sliderPos.set(100, ofGetHeight() - 100);
    sliderSize = 30;
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
        rect(i, i, rotateShape);
        rect(i, i, -rotateShape);
    }
    
    rectSlider();
    ofSetColor(0);
    //ofDrawBitmapString("Sound Sculpture Control", sliderPos.x + 50, sliderPos.y);
    
}

void drawRect::exit() {
    
    
}

//--------------------------------------------------------------
void drawRect::rect(int x, int y, float rotate){
    
    ofPushMatrix();
    ofSetColor(0, 0, 0, 15);
    ofFill();
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofScale(.75, .75);
    ofRotateZ(rotate);
    ofRect(0, 0, x, y);
    ofPopMatrix();
    
    //ofDrawBitmapString("Track Speed: " + ofToString(sound.getSpeed()), 100, 100);
    
}

//--------------------------------------------------------------
void drawRect::slide(int x, int y){
    speed = ofMap(x, 0, ofGetWidth(), 10.0, 0.01);
    sound.setSpeed(ofMap(x, 0, ofGetWidth(), 1.0, 0.0, true));
    
    //slide control
    sliderPos.x = x;
    
    alpha = ofMap(x, 0.0, ofGetWidth() - 100, 0.0, 255);
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
    
}




