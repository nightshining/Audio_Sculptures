#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class lineShape : public ofxiOSApp{
	
public:
    lineShape();
    ~lineShape();
    void setup();
    void update();
    void draw();
    void exit();
    void drawLine(float x, float y, float rotate);

    float rotateShape;
    
    ofEasyCam cam;
    ofSoundPlayer pad;
    
    
};


