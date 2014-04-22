
#include "drawSquid.h"

drawSquid::drawSquid() {
    
}

drawSquid::~drawSquid() {
    
}

//--------------------------------------------------------------
void drawSquid::setup(){
    
    point1.set(0, 0);
    point2.set(0, 500);
    point3.set(200, 0);
    point4.set(200, 200);
    
    sound.loadSound("squidSound.aif");
    sound.play();
    sound.setLoop(true);
    
    
}

//--------------------------------------------------------------
void drawSquid::update(){
    
    rotate += 0.33f;
    speedNoise += 0.10f;
    
    noise = 1000 * ofNoise(speedNoise);
    
    
}


//--------------------------------------------------------------
void drawSquid::draw(){
    
    cam.begin();
    for (int i = 0; i < 500; i += 5) {
        ofPushMatrix();
        ofSetColor(0);
        ofNoFill();
        ofScale(0.50, 0.50);
        ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
        ofRotateX(i);
        ofRotateY(rotate + i );
        ofRotateZ( rotate  + cos(i) );
        ofCurve(point1.x + i + noise, point1.y + i + noise, point2.x + i, point2.y + i, point3.x + i, point3.y + i, point4.x, point4.y);
        ofPopMatrix();
    }    
    cam.end();
    
    
    
}


//--------------------------------------------------------------
void drawSquid::mouseDragged(int x, int y, int button){
    
    sound.setPan(ofMap(x, 0, ofGetWidth(), 0.0, 1.0, true));
    
    
}


