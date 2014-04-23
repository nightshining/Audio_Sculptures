
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
    
    for (int i = 0; i < 50; i += 15) {
    cylinder(i, 25, 50, sendNoise - 240, 50);
    cylinder(i, 15, 25, sendNoise - 50, 0);
    //ofDrawBitmapString("Sound File Position: " + ofToString(sound.getPosition()), 50, 50);
    }
}

//--------------------------------------------------------------
void drawCyl::cylinder(float iterate, int width, int height, float alpha, int outline){

    ofSetCylinderResolution(4, 2);
    ofPushMatrix();
    ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2 + 200);
    ofScale(2.0, 2.0);
    ofRotateY(rotate + iterate * PI / 2);
    ofRotateX(rotate + iterate * PI);
    ofSetColor(0, 0, 0, alpha);
    ofFill();
    ofDrawCylinder(0, 0, width, height);
    ofSetColor(0, 0, 0, outline);
    ofNoFill();
    ofDrawCylinder(0, 0, width, height);
    ofPopMatrix();
    
}

void drawCyl::exit() {
    
}

//--------------------------------------------------------------
void drawCyl::touchTrigger(int x, int y){
    
    trigger = true;
    sound.play();
    
}


