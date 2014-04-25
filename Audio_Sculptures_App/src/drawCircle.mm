
#include "drawCircle.h"

drawCircle::drawCircle() {
    
}

drawCircle::~drawCircle() {
    
    
}

//--------------------------------------------------------------
void drawCircle::setup(){
    
    sound.loadSound("cirSound.caf");
    sound.setMultiPlay(true);
    pos.set(0, 0);
    counter = 0;
    triggerSound = false;
    cam.setPosition(1000, 0, 2609);
    
}

//--------------------------------------------------------------
void drawCircle::update(){


    
    floating += 0.033f;
    
    sendFloating = 100 * sin(floating);
    
    if (triggerSound == true) {
        
        counter++;
        rotateShape += 0.90f;
        
    }
    
    if (!sound.getIsPlaying()) {
        
        rotateShape = 0;
        counter = 0;
        triggerSound = false;
    
    }
    
    cam.setPosition(1000 + sendFloating, sendFloating, 2609 + sendFloating);
    cam.disableMouseInput();
    
    
    
}

//--------------------------------------------------------------
void drawCircle::draw(){
    
    for (int i = 0; i < 300; i+=2) {
        pos.x = i;
        pos.y = i;
        shape( i + rotateShape + sendFloating, pos.x, pos.y, i );
    }
    
    //ofDrawBitmapString("Camera: " + ofToString(cam.getPosition()), 50, 50);
    
}

void drawCircle::exit() {
    
}

//--------------------------------------------------------------
void drawCircle::shape(float rotateY, int x, int y, float size){
    
    cam.begin();
    ofSetCircleResolution(100);
    ofSetColor(0, 0, 0, 50);
    ofNoFill();
    ofPushMatrix();
    ofRotateY(rotateY * PI);
    ofTranslate(x, y);
    ofCircle(0, 0, size);
    ofPopMatrix();
    cam.end();
    
}

//--------------------------------------------------------------
void drawCircle::touchTrigger(int x, int y){
    
    triggerSound = true;
    if (!sound.getIsPlaying()) {
        sound.play();
    }
    
}


