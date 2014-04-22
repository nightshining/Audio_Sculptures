
#pragma once

#include "ofMain.h"


class drawSquid : public ofBaseApp{
    
public:
    drawSquid();
    ~drawSquid();
    void setup();
    void update();
    void draw();
    
    void mouseDragged(int x, int y, int button);
    
   
    ofVec2f point1, point2, point3, point4;
    ofEasyCam cam;
    float rotate, noise, speedNoise;
    ofSoundPlayer sound;
    
    
};
