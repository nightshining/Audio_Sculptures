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
    void moveLine(int x, int y);
    
    float rotateShape, volumeLevel;
    
    ofEasyCam cam;
    ofSoundPlayer pad;
    ofPoint pos;
    
};


