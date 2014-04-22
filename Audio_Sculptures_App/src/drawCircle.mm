
#include "drawCircle.h"

drawCircle::drawCircle() {
    
}

drawCircle::~drawCircle() {
    
    
}

//--------------------------------------------------------------
void drawCircle::setup(){	
    
    sound.loadSound("cirSound.aif");
    sound.setMultiPlay(true);
    pos.set(0, 0);
    counter = 0;
    triggerSound = false;
    cam.setPosition(1000, 0, 2609);
    
    
}

//--------------------------------------------------------------
void drawCircle::update(){
    
    if (triggerSound == true) {
        
        counter++;
        rotateShape += 0.90f;
        
    }
    
    if (!sound.getIsPlaying()) {
        rotateShape = 0;
        counter = 0;
        triggerSound = false;
    }
    
    cam.setPosition(1000, 0, 2609);
    
    cam.disableMouseInput();
    
}

//--------------------------------------------------------------
void drawCircle::draw(){
    
    for (int i = 0; i < 300; i+=2) {
        pos.x = i;
        pos.y = i;
        shape( i + rotateShape, pos.x, pos.y , i );
    }
    
    ofDrawBitmapString("Camera: " + ofToString(cam.getPosition()), 50, 50);
	
}

//--------------------------------------------------------------
void drawCircle::shape(float rotateY, int x, int y, float size){
    
    cam.begin();
    ofSetCircleResolution(100);
    ofSetColor(0, 0, 0, 190);
    ofNoFill();
    ofPushMatrix();
    ofRotateY(rotateY * PI);
    ofTranslate(x, y);
    ofCircle(0, 0, 25 + size);
    ofPopMatrix();
    cam.end();
    
}

//--------------------------------------------------------------
void drawCircle::exit(){
    
}

//--------------------------------------------------------------
void drawCircle::touchDown(ofTouchEventArgs & touch){
    
    triggerSound = true;
    if (!sound.getIsPlaying()) {
        sound.play();
    }
   
}

//--------------------------------------------------------------
void drawCircle::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCircle::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCircle::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCircle::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void drawCircle::lostFocus(){
    
}

//--------------------------------------------------------------
void drawCircle::gotFocus(){
    
}

//--------------------------------------------------------------
void drawCircle::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void drawCircle::deviceOrientationChanged(int newOrientation){
    
}
