#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawChip : public ofxiOSApp{
	
public:
    drawChip();
    ~drawChip();
    void setup();
    void update();
    void draw();
    void button(int size, int color);
    void receivedTouch(int x, int y);
    void exit();

    
    float noise1, noise2, noise3, noise4;
    float speed1, speed2, speed3, speed4;
    float rotate;
    bool trigger;
    ofSoundPlayer clicks;
    ofPoint pos;
    int size;
    
};


