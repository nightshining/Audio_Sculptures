
#include "drawGifs.h"


drawGifs::drawGifs() {
    
}

drawGifs::~drawGifs() {
    
}

//--------------------------------------------------------------
void drawGifs::setup(){
    
    //File format for the example frames is
	//frame01.png
	//this creates a method call where the parameters
	//prefix is frame, file type is png, from frame 1 to 11, 2 digits in the number
	sequence.loadSequence("frame", "png", 1, 11, 2);
	sequence.preloadAllFrames();	//this way there is no stutter when loading frames
	sequence.setFrameRate(10); //set to ten frames per second for Muybridge's horse.
	
    
}

//--------------------------------------------------------------
void drawGifs::update(){
    
    
    
}

//--------------------------------------------------------------
void drawGifs::draw(){
    
    //initial idea always playing images. call load for new images
    sequence.getFrameForTime(ofGetElapsedTimef())->draw(0,0);
	
    
}

void drawGifs::loadNewSequence() {
    
    //File format for the example frames is
	//frame01.png
	//this creates a method call where the parameters
	//prefix is frame, file type is png, from frame 1 to 11, 2 digits in the number
	sequence.loadSequence("frame", "png", 1, 11, 2);
	sequence.preloadAllFrames();	//this way there is no stutter when loading frames
	sequence.setFrameRate(10); //set to ten frames per second for Muybridge's horse.
	
    
}

void drawGifs::loadActionSequence() {
    
    
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
