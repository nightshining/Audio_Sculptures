
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
    
    trackVolume = 0.0;
    sound.loadSound("squidSound.caf");
    sound.play();
    sound.setLoop(true);
    sound.setVolume(trackVolume);
    squidPos.set(0, 0);
}

//--------------------------------------------------------------
void drawSquid::update(){
    
    rotate += 0.33f;
    speedNoise += 0.10f;
    
    noise = 1000 * ofNoise(speedNoise);
    sound.setVolume(trackVolume);
    
}


//--------------------------------------------------------------
void drawSquid::draw(){
    
    sound.setVolume(trackVolume);
    //cam.setDistance(0.0);
    
   //cam.begin();
    for (int i = 0; i < 700; i += 5) {
        ofPushMatrix();
        ofSetColor(randomFill, ofMap(i, 0, 500, 180, 100));
        ofNoFill();
        ofTranslate(ofGetWidth() / 2 + 200, ofGetHeight() / 2);
        ofRotateX( i + squidPos.y );
        ofRotateY( rotate + i );
        ofRotateZ( rotate  + cos(i) );
        ofScale(0.20, 0.20);
        ofCurve(point1.x + i + noise, point1.y + i + noise, point2.x + i, point2.y + i, point3.x + i, point3.y + i, point4.x, point4.y);
        ofPopMatrix();
    }
    //cam.end();
    
    
    
}

//--------------------------------------------------------------
void drawSquid::slide(int x, int y){
    
    sound.setPan(ofMap(y, 0, ofGetWidth(), 1.0, -1.0, true));
    squidPos.x = x;
    squidPos.y = y;
    
}


//--------------------------------------------------------------
void drawSquid::exit(){
    
}

void drawSquid::randomizeColor() {
    
    randomColor = ofRandom(4);
    
    switch (randomColor) {
        case 0:
            randomFill = ofColor::crimson;
            break;
        case 1:
            randomFill = ofColor::aquamarine;
            break;
        case 2:
            randomFill = ofColor::whiteSmoke;
        case 3:
            randomFill = ofColor::crimson;
        default:
            randomFill = ofColor::black;
            break;
    }

    
}


