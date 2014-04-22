#pragma once

#include "ofMain.h"

class drawChip : public ofBaseApp{
    
public:
    drawChip();
    ~drawChip();
    void setup();
    void update();
    void draw();
    void button(int size, int color);

    void mousePressed(int x, int y, int button);
   
    
    float noise1, noise2, noise3, noise4;
    float speed1, speed2, speed3, speed4;
    float rotate;
    bool trigger;
    ofSoundPlayer clicks;
    ofPoint pos;
    int size;
};
