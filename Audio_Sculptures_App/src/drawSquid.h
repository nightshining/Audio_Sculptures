#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawSquid : public ofxiOSApp{
	
public:
    drawSquid();
    ~drawSquid();
    void setup();
    void update();
    void draw();
    void exit();
    
    void slide(int x, int y);
    
    
    ofVec2f point1, point2, point3, point4;
    ofEasyCam cam;
    float rotate, noise, speedNoise;
    ofSoundPlayer sound;
    ofPoint squidPos;
    float trackVolume;
};


