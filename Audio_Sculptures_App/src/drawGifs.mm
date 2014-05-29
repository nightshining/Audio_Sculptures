
#include "drawGifs.h"


drawGifs::drawGifs() {
    
}

drawGifs::~drawGifs() {
    
}

//--------------------------------------------------------------
void drawGifs::draw(){
    
    ofPushMatrix();
    ofSetColor(235, 235, 235);
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofScale(0.80, 1.0);
    sequence.getFrameForTime(ofGetElapsedTimef())->draw(0,0);
    ofPopMatrix();
    
}

void drawGifs::loadNewSequence(string imageName, int totalAmt, int frameRate) {
    
    //File format for the example frames is
	//frame01.png
	//this creates a method call where the parameters
	//prefix is frame, file type is png, from frame 1 to 11, 2 digits in the number
	sequence.loadSequence(imageName, "png", 1, totalAmt, 2);
	sequence.preloadAllFrames();
	sequence.setFrameRate(frameRate);
    
    
}

void drawGifs::unloadSequence() {
    
    sequence.unloadSequence();
}

//--------------------------------------------------------------
void drawGifs::exit(){
    
}

//--------------------------------------------------------------
void drawGifs::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawGifs::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawGifs::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawGifs::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawGifs::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawGifs::lostFocus(){
    
}

//--------------------------------------------------------------
void drawGifs::gotFocus(){
    
}

//--------------------------------------------------------------
void drawGifs::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void drawGifs::deviceOrientationChanged(int newOrientation){
    
}
