#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawCube : public ofxiOSApp{
	
public:
    drawCube();
    ~drawCube();
    void setup();
    void update();
    void draw();
    void exit();
    void touchTrigger(int x, int y);
    
    float rotate, noise, speed, alpha, alphaOutline;
    float sendNoise;
    ofEasyCam cam;
    
    
    bool trigger, triggerSound;
    
    ofSoundPlayer cubeSound;
    ofRectangle clickBox;
    //sculpture bounce for sound design
};


