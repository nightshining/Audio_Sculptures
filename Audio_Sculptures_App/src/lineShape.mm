
#include "lineShape.h"

lineShape::lineShape() {
    
}

lineShape::~lineShape() {
    
}

//--------------------------------------------------------------
void lineShape::setup(){
    
    volumeLevel = 0.50;
    pad.loadSound("linePad.caf");
    pad.play();
    pad.setLoop(true);
    pad.setVolume(volumeLevel);
    pos.set(0, 0);
    sineSpeed = 0.25f;
    
}

//--------------------------------------------------------------
void lineShape::update(){
    
    rotateShape += 0.70f;
    
    if (pad.getPositionMS() >= 17000) {
        pad.play();
    }
    pad.setVolume(volumeLevel);
    
    
    counter += sineSpeed;
    sinePan = 1.0 * sin(counter);
    pad.setPan(sinePan);
    
}

//--------------------------------------------------------------
void lineShape::draw(){
    
    pad.setVolume(volumeLevel);
    cam.setDistance(0.0);
    
    cam.begin();
    for (int i = 0; i < 200; i += 2 ) {
        drawLine(i, 0, rotateShape + i);
    }
    cam.end();
}

void lineShape::drawLine(float x, float y, float rotate){
    
    ofPushMatrix();
    ofSetColor(0);
    ofRotateX(rotate * sin(PI / 2));
    ofRotateY(x + rotate);
    ofScale(.10, .10);
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofLine(0, 50, x + rotate + 50, y + 50);
    ofPopMatrix();
    
    //ofDrawBitmapString("Track ms: " + ofToString(pad.getPositionMS()), 100, 100);
    
}

void lineShape::moveLine(int x, int y) {
    
    x = ofMap(pos.x, 0, ofGetWidth(), 0.0, 1.0);
    y = ofMap(pos.y, 0, ofGetHeight(), 0.0, 1.0);
    
    
    
}

//--------------------------------------------------------------
void lineShape::exit(){
    
}

