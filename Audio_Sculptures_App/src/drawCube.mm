
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
    sizeTrigger = 60;
    pos.set(ofGetWidth() / 2 - 200, ofGetHeight() / 2);
    
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
    } else if (!trigger || cubeSound.getPositionMS() >= 3200 ) {
        alpha = 240;
        sendNoise = 0;
        alphaOutline = 200;
        cubeSound.setPositionMS(0);
    }
 
    
    if (trigger && cubeSound.getPosition() == 0) {
        alpha = noise;
        sendNoise = noise;
        alphaOutline = noise;
        
    }
    
    
}


//--------------------------------------------------------------
void drawCube::draw(){
    
    
    //clickBox.setFromCenter(ofGetWidth() / 2 - 200, ofGetHeight() / 2, 100, 100);
   
    //Trigger and move sound with circle
    ofSetColor(0, 0, 0, 0);
    ofCircle(pos.x, pos.y, sizeTrigger);
    
    //cam.begin();
    for (int i = 0; i < 50; i += 5) {
        ofPushMatrix();
        ofTranslate(pos.x, pos.y);
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
    //ofDrawBitmapString("Waveform Position MS: " + ofToString(cubeSound.getPositionMS()), 50, 50);
}

void drawCube::exit() {
    
}


//--------------------------------------------------------------
void drawCube::touchTrigger(int x, int y){
    
        
    //if (clickBox.inside(x, y)) {
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
        trigger = true;
        cubeSound.play();
        cubeSound.setLoop(true);
        cubeSound.setPositionMS(0);
        
    }
    
}

void drawCube::upTouch(int x, int y){
    
    //if (clickBox.inside(x, y)) {
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
        trigger = false;
        cubeSound.stop();
        cubeSound.setLoop(false);
        
    }
    
}


void drawCube::moveCube(int x, int y){
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
        pos.x = x;
        pos.y = y;
        
    }
    
}

