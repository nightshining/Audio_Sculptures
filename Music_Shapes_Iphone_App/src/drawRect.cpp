
#include "drawRect.h"

drawRect::drawRect() {
    
}

drawRect::~drawRect() {
    
}

//--------------------------------------------------------------
void drawRect::setup(){
        
    sound.loadSound("rectArp.aif");
    sound.play();
    sound.setLoop(true);
    speed = 10.0;
    
}

//--------------------------------------------------------------
void drawRect::update(){
    
    rotateShape += speed;
    
    
}
//--------------------------------------------------------------
void drawRect::draw(){
    
    for (int i = 0; i < 400; i += 25) {
        rect(i, i, rotateShape);
        rect(i, i, -rotateShape);
    }
    
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
    
    ofDrawBitmapString("Track Speed: " + ofToString(sound.getSpeed()), 100, 100);
    
}

//--------------------------------------------------------------
void drawRect::mouseDragged(int x, int y, int button){
    
    speed = ofMap(x, 0, ofGetWidth(), 0.01, 10.0);
    sound.setSpeed(ofMap(x, 0, ofGetWidth(), 0.0, 1.0, true));
}


