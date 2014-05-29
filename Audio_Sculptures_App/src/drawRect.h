#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawRect : public ofxiOSApp{
	
public:
    drawRect();
    ~drawRect();
    void setup();
    void update();
    void draw();
    void exit();
    
    void rect(int x, int y, float rotate);
    void slide(int x, int y);
    void rectSlider();

    float rotateShape, speed;
    ofSoundPlayer sound;
    
    ofPoint sliderPos;
    int sliderSize, alpha;
    float trackVolume;
    
    //random colors
    void randomizeColor();
    ofColor randomFill;
    int randomColor;
};


