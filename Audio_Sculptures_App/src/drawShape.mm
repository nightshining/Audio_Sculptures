
#include "drawShape.h"

drawShape::drawShape() {
    
}

drawShape::~drawShape() {
    
}

//--------------------------------------------------------------
void drawShape::setup(){	
    
    
    
}

//--------------------------------------------------------------
void drawShape::update(){
    
    rotateShape += 0.15f;

    
}

//--------------------------------------------------------------
void drawShape::draw(){
    
    cam.begin();
    for(int i = 0; i < 100; i += 2) {
        shape(i + rotateShape,  i + 60, i + 10);
    }
    cam.end();
	
}

//--------------------------------------------------------------
void drawShape::shape(float rotate, int x, int y){
    
    ofSetColor(0);
    ofNoFill();
    ofPushMatrix();
    //ofScale(ofMap(mouseY, 0, ofGetHeight(), 0.0, 3.0), 1.0);
    ofRotateY(rotate);
    ofTranslate(x, y);
    ofSetPolyMode(OF_POLY_WINDING_NONZERO);
    ofBeginShape();
    
    ofVertex(0, 0);
    ofVertex(100, 50);
    ofVertex(50, 100);
    
    ofEndShape();
    ofPopMatrix();
    
}

//--------------------------------------------------------------
void drawShape::exit(){
    
}

//--------------------------------------------------------------
void drawShape::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawShape::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawShape::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawShape::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawShape::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawShape::lostFocus(){
    
}

//--------------------------------------------------------------
void drawShape::gotFocus(){
    
}

//--------------------------------------------------------------
void drawShape::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void drawShape::deviceOrientationChanged(int newOrientation){
    
}
