
#include "drawChip.h"

drawChip::drawChip() {
    
    
}

drawChip::~drawChip() {
    
    
}

//--------------------------------------------------------------
void drawChip::setup(){	
    
    clicks.loadSound("circleClicks.caf");
    trigger = false;
    size = 50;
    pos.set(ofGetWidth() / 2, ofGetHeight() / 2); //actual translation of object
    
}

//--------------------------------------------------------------
void drawChip::update(){
    
    
    rotate += 0.50f;
    
    speed1 += 0.15f;
    speed2 += 0.10f;
    speed3 += 0.20f;
    speed4 += 0.20f;
    
    if (trigger == true) {
        noise1 = 255 * ofNoise(speed1);
        noise2 = 200 * ofNoise(speed2);
        noise3 = 240 * ofNoise(speed3);
        noise4 = 250 * ofNoise(speed4);
    }
    
    if (!clicks.getIsPlaying()) {
        trigger = false;
        noise1 = 255;
        noise2 = 200;
        noise3 = 150;
        noise4 = 255;
    }

}

//--------------------------------------------------------------
void drawChip::draw(){
    
    ofSetCircleResolution(100);
    
    button(75, noise4);
    button(size, noise1);
    button(25, noise2);
    button(10, noise3);
    
	
}

//--------------------------------------------------------------
void drawChip::button(int size, int color){
    
    ofPushMatrix();
    ofTranslate(pos.x, pos.y);
    ofRotateX(rotate);
    //ofRotateY(rotate);
    ofScale(1.0, 1.0);
    ofSetColor(0, 0, 0, color);
    ofFill();
    ofCircle(0, 0, size);
    ofPopMatrix();
    
    
}

void drawChip::receivedTouch(int x, int y) {
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < size ) {
        
        trigger = true;
        clicks.play();
        
    }
    
}

//--------------------------------------------------------------
void drawChip::exit(){
    
}

