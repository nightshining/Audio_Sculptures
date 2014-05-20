#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawDiamond : public ofxiOSApp{
	
public:
    drawDiamond();
    ~drawDiamond();
    void setup();
    void update();
    void draw();
    void exit();
	void sphere();
    void touchTrigger(int x, int y);
    void upTouch(int x, int y);
    void moveDiamond(int x, int y);
    
    float rotate, sendNoise,noise, speed;
    bool trigger;
    ofSoundPlayer sound;
    vector <string> soundFiles;
    ofPoint pos;
    int sizeTrigger;
    
};


