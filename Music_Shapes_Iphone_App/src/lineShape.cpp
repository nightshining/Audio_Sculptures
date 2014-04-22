
#include "lineShape.h"

lineShape::lineShape(){
    
}

lineShape::~lineShape(){
    
    
}

//--------------------------------------------------------------
void lineShape::setup(){
    
    pad.loadSound("linePad.aif");
    pad.play();
    
}

//--------------------------------------------------------------
void lineShape::update(){
    
    rotateShape += 0.70f;
    
    if (pad.getPositionMS() >= 17000) {
        pad.play();
    }
   
}

//--------------------------------------------------------------
void lineShape::draw(){
    
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
    ofScale(.50, .50);
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofLine(0, 50, x + rotate + 50, y + 50);
    ofPopMatrix();
    
    ofDrawBitmapString("Track ms: " + ofToString(pad.getPositionMS()), 100, 100);
    
}

//--------------------------------------------------------------
void lineShape::mouseDragged(int x, int y, int button){
    
}

//--------------------------------------------------------------
void lineShape::mousePressed(int x, int y, int button){
    
}

//--------------------------------------------------------------
void lineShape::mouseReleased(int x, int y, int button){
    
}

