
#include "drawCyl.h"

drawCyl::drawCyl() {
    
}

drawCyl::~drawCyl() {
    
    
}

//--------------------------------------------------------------
void drawCyl::setup(){
    
    
    sound.loadSound("cylSound.caf");
    trigger = false;
    pos.set(ofGetWidth() / 2 , ofGetHeight() / 2 + 200 );
    sizeTrigger = 60;
    
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
    
    /////Trigger Button/////
    //ofSetColor(0);
    //ofNoFill();
    ofTranslate(pos.x, pos.y);
    ofCircle(0, 0, sizeTrigger);

}

//--------------------------------------------------------------
void drawCyl::cylinder(float iterate, int width, int height, float alpha, int outline){


    ofSetCylinderResolution(4, 2);
    ofPushMatrix();
    ofTranslate( pos.x, pos.y );
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
    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
        trigger = true;
        sound.play();
    }
}

void drawCyl::moveCyl(int x, int y) {

    
    int dist1 = ofDist(pos.x, pos.y, x, y);
    
    if ( dist1 < sizeTrigger ) {
    pos.x = x;
    pos.y = y;
        
    }
    
}


