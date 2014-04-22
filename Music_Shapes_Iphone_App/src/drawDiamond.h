#pragma once

#include "ofMain.h"

class drawDiamond : public ofBaseApp{
    
public:
    drawDiamond();
    ~drawDiamond();
    void setup();
    void update();
    void draw();
    void sphere();
    void mousePressed(int x, int y, int button);
    
    
    float rotate, sendNoise,noise, speed;
    bool trigger;
    ofSoundPlayer sound;
    vector <string> soundFiles;
    
    
    
};
