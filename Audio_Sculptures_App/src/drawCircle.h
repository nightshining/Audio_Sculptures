#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "ofxMultiTouch.h"

class drawCircle : public ofxiOSApp{
	
public:
    drawCircle();
    ~drawCircle();
    void setup();
    void update();
    void draw();
    void exit();
    void shape(float rotateY, int x, int y, float size);
    void touchTrigger(int x, int y);
    
    ofEasyCam cam;
    float rotateShape, floating, sendFloating;
    int counter;
    ofSoundPlayer sound;
    ofPoint pos;
    bool triggerSound;
    ofFbo fbo;

};


