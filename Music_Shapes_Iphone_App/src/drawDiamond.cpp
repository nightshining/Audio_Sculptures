
#include "drawDiamond.h"

drawDiamond::drawDiamond() {
    
}

drawDiamond::~drawDiamond() {
    
}

//--------------------------------------------------------------
void drawDiamond::setup(){
    
    
    soundFiles.push_back("shapeBass1.aif");
    soundFiles.push_back("shapeBass2.aif");
    soundFiles.push_back("shapeBass3.aif");
    
    sound.loadSound(soundFiles[0]);
    
    
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
    
    
    sphere();
    
    
}

//--------------------------------------------------------------
void drawDiamond::sphere(){
    
    ofSetSphereResolution(3);
    ofPushMatrix();
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
    ofScale(1.25, 1.25);
    ofRotateX(rotate);
    ofRotateY(rotate);
    //small shape
    ofSetColor(ofColor::black);
    ofFill();
    ofDrawSphere(sendNoise);
    //big shape
    ofSetColor(ofColor::black);
    ofNoFill();
    ofDrawSphere(50);
    ofPopMatrix();
    
}


//--------------------------------------------------------------
void drawDiamond::mousePressed(int x, int y, int button){
    
    trigger = true;
    
    int randomFile = ofRandom(3);
    sound.loadSound(soundFiles[randomFile]);
    sound.play();
    
    
    
}



