#pragma once

#include "ofMain.h"


class drawCyl : public ofBaseApp{
    
public:
    drawCyl();
    ~drawCyl();
    void setup();
    void update();
    void draw();
    void cylinder(int width, int height, float alpha, int outline);
    void mousePressed(int x, int y, int button);
    
    float rotate, noise, sendNoise;
    ofSoundPlayer sound;
    bool trigger;
    
    
};
