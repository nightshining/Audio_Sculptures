#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawCyl : public ofxiOSApp{
	
public:
    drawCyl();
    ~drawCyl();
    void setup();
    void update();
    void draw();
    void cylinder(float iterate, int width, int height, float alpha, int outline);
    void exit();

    void touchTrigger(int x, int y);
    void moveCyl(int x, int y);
    
    float rotate, noise, sendNoise;
    ofSoundPlayer sound;
    bool trigger;
    ofPoint pos;
    int sizeTrigger;
    
    //Randomize Colors
    void randomizeColor();
    ofColor randomFill;
    int randomColor;
    
    //outer color
    ofColor outerCyl;
};


