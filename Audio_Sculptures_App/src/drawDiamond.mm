
#include "drawDiamond.h"

drawDiamond::drawDiamond() {
    
}

drawDiamond::~drawDiamond() {
    
}

//--------------------------------------------------------------
void drawDiamond::setup(){
    
    
    soundFiles.push_back("shapeBass1.caf");
    soundFiles.push_back("shapeBass2.caf");
    soundFiles.push_back("shapeBass3.caf");
    
    sound.loadSound(soundFiles[0]);
    sizeTrigger = 60;
    pos.set(ofGetWidth() / 2 + 200, ofGetHeight() / 2);
}

//--------------------------------------------------------------
void drawDiamond::update(){
    
    rotate += 0.33f;
    speed += 0.20f;
    noise = 50 * ofNoise(speed);
    noise = noise / 2;
    
    
    if (trigger == true) {
        sendNoise = noise;
        
    }
    
    if (!sound.getIsPlaying()) {
        trigger = false;
        sendNoise = 20;
    }
    
    
    
}
//--------------------------------------------------------------
void drawDiamond::draw(){
  
    ofSetColor(0,0,0,0);
    ofCircle(pos.x, pos.y, sizeTrigger);
    
    sphere();
   
}

//--------------------------------------------------------------
void drawDiamond::exit(){
    
}

//--------------------------------------------------------------
void drawDiamond::sphere(){
    
    ofSetSphereResolution(3);
    ofPushMatrix();
    ofTranslate(pos.x, pos.y);
    ofScale(1.25, 1.25);
    ofRotateX(rotate);
    ofRotateY(rotate);
    //small shape
    ofSetColor(ofColor::black);
    ofFill();
    ofDrawSphere(sendNoise);
    //big shape
    ofSetColor(0,0,0,150);
    ofNoFill();
    ofDrawSphere(50);
    ofPopMatrix();
    
}


//--------------------------------------------------------------
void drawDiamond::touchTrigger(int x, int y){
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
    
    trigger = true;
    
    int randomFile = ofRandom(3);
    sound.loadSound(soundFiles[randomFile]);
    sound.play();
    
    }
    
}

void drawDiamond::moveDiamond(int x, int y) {
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
        pos.x = x;
        pos.y = y;
        
    }    
    
}



