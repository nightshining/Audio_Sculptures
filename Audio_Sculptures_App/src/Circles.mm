
#include "Circles.h"

Circles::Circles(){
    
}

Circles::~Circles(){
        
}

void Circles::setup(int posX, int posY) {
    
    alphaAction = 0.0;
    size = 30;
    fingerPos.set(posX, posY);
    randomSizeSpeed = ofRandom(0.01f, 0.10f);
    randomRotateSpeed = ofRandom(0.10f, 0.40f);
    randomSample = ofRandom(3);
    
    for (int i = 0; i < 4; i++) {
        circleSound.resize(i);
    }
    for (int i = 0; i < circleSound.size(); i++) {
        circleSound[i].loadSound("circles" + ofToString(i) + ".caf");
    }
}
//--------------------------------------------------------------
void Circles::update(){
    
    alphaAction -= 5.0;
    rotateAction += randomRotateSpeed;
    pulse(randomSizeSpeed);
    
    
}

//--------------------------------------------------------------
void Circles::draw(){
    
    ofSetCircleResolution(5);
    for (int i = 0; i < 50; i += 10) {
        ofPushMatrix();
        ofTranslate(fingerPos.x, fingerPos.y);
        ofRotateY(rotateAction + i );
        ofRotateX(rotateAction);
        //outer
        ofSetColor(0,0,0,alphaAction);
        ofFill();
        ofCircle(0, 0, size - 10);
        
        //inner
        ofSetColor(0, 0, 0, i + 100);
        ofNoFill();
        ofCircle(0, 0, size + i);
        ofPopMatrix();
    }
}

void Circles::pulse(float speed){
    
    counter += speed;
    size = 40 * sin(counter);
    size = ofMap(size, -40, 40, 20, 40);
    
}

//--------------------------------------------------------------
void Circles::touchTrigger(int x, int y){
    
    int dist1 = ofDist(fingerPos.x, fingerPos.y, x, y);
    
    if ( dist1 < size ) {
        alphaAction = 200.0;
        circleSound[randomSample].play();
        
    }
    
}

