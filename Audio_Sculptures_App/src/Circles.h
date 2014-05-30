#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class Circles : public ofxiOSApp{
    
public:
    Circles();
    ~Circles();
    void setup(int posX, int posY);
    void update();
    void draw();
    void pulse(float speed);
    void touchTrigger(int x, int y);

    
    ofPoint fingerPos;
    float alphaAction, rotateAction;
    float size, counter, randomSizeSpeed, randomRotateSpeed;
    vector<ofSoundPlayer> circleSound;
    int randomSample;
    
    //random colors
    void randomizeColor(int randomColor);
    ofColor randomFill;
};
