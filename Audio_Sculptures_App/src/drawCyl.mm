
#include "drawCyl.h"

drawCyl::drawCyl() {
    
}

drawCyl::~drawCyl() {
    
}

//--------------------------------------------------------------
void drawCyl::setup(){	
    
    sound.loadSound("cylSound.caf");
    trigger = false;
    
}

//--------------------------------------------------------------
void drawCyl::update(){
   
    rotate += 0.55f;
    
    if (trigger == true) {
        noise += 0.10f;
        sendNoise = 255 * ofNoise(noise);
    }
    
    if (sound.getPosition() >= .35) {
        trigger = false;
        sendNoise = 255;
        
    }
}

//--------------------------------------------------------------
void drawCyl::draw(){
	
    cylinder(25, 50, 0, 0);
    cylinder(15, 25, sendNoise, 0);
    ofDrawBitmapString("Sound File Position: " + ofToString(sound.getPosition()), 50, 50);
    
}

void drawCyl::cylinder(int width, int height, float alpha, int outline) {

    ofSetCylinderResolution(4, 2);
    ofPushMatrix();
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofScale(2.0, 2.0);
    ofRotateY(rotate);
    ofRotateX(rotate);
    ofSetColor(0, 0, 0, alpha);
    ofFill();
    ofDrawCylinder(0, 0, width, height);
    ofSetColor(outline);
    ofNoFill();
    ofDrawCylinder(0, 0, width, height);
    ofPopMatrix();
    
}

//--------------------------------------------------------------
void drawCyl::exit(){
    
}

//--------------------------------------------------------------
void drawCyl::touchDown(ofTouchEventArgs & touch){
    
    trigger = true;
    sound.play();
}

//--------------------------------------------------------------
void drawCyl::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCyl::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCyl::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCyl::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCyl::lostFocus(){
    
}

//--------------------------------------------------------------
void drawCyl::gotFocus(){
    
}

//--------------------------------------------------------------
void drawCyl::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void drawCyl::deviceOrientationChanged(int newOrientation){
    
}
