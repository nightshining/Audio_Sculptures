
#include "drawCube.h"


drawCube::drawCube() {
    
}

drawCube::~drawCube() {
    
}

//--------------------------------------------------------------
void drawCube::setup(){
    
    //action
    trigger = false;
    alpha = 240;
    alphaOutline = 200;
        
    triggerSound = false;
    cubeSound.loadSound("drawCubeSound.caf");
    cubeSound.setMultiPlay(true);
    
    
}

//--------------------------------------------------------------
void drawCube::update(){
    
    rotate += 0.50f;
    speed += 0.20f;
    noise = 35 * ofNoise(speed);
    noise = noise / 2;
    
    
    
    if (trigger == true) {
        alpha = noise;
        sendNoise = noise;
        alphaOutline = noise;
        
    }
    
    if (cubeSound.getPositionMS() >= 3200) {
        trigger = false;
        alpha = 240;
        sendNoise = 0;
        alphaOutline = 200;
    }
    
}


//--------------------------------------------------------------
void drawCube::draw(){
    
    
    clickBox.setFromCenter(ofGetWidth() / 2 - 200, ofGetHeight() / 2, 100, 100);
    
    //cam.begin();
    for (int i = 0; i < 50; i += 5) {
        ofPushMatrix();
        ofTranslate(ofGetWidth() / 2 - 200, ofGetHeight() / 2);
        ofScale(2.5, 2.5);
        ofRotateY(rotate);
        ofRotateX(rotate);
        //ofRotateZ(rotate);
        //small box
        ofSetColor(0, 0, 0, alpha + 10);
        ofFill();
        ofDrawBox(0, 0, -1, 10 + sendNoise, 10 + sendNoise, 10 + sendNoise);
        ofSetColor(255, 240, 250, alpha);
        ofNoFill();
        ofDrawBox(0, 0, -1, 10 + sendNoise, 10 + sendNoise, 10 + sendNoise);
        //big box
        ofSetColor(0);
        ofNoFill();
        ofDrawBox(0, 0, -1, 50, 50, 50);
        ofSetColor(0, 0, 0, alpha);
        ofFill();
        ofDrawBox(0, 0, -1, 50, 50, 50);
        ofPopMatrix();
    }
    //cam.end();
    ofSetColor(0);
    ofDrawBitmapString("Waveform Position MS: " + ofToString(cubeSound.getPositionMS()), 50, 50);
}

void drawCube::exit() {
    
}


//--------------------------------------------------------------
void drawCube::touchTrigger(int x, int y){
    
    if (clickBox.inside(x, y)) {
        trigger = true;
        cubeSound.play();
    }
}

