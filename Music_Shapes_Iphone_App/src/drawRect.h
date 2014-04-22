
#pragma once

#include "ofMain.h"


class drawRect : public ofBaseApp{
    
public:
    drawRect();
    ~drawRect();
    void setup();
    void update();
    void draw();
    void rect(int x, int y, float rotate);
    
   
    void mouseDragged(int x, int y, int button);
    
    
    float rotateShape, speed;
    ofSoundPlayer sound;
    
    
};
