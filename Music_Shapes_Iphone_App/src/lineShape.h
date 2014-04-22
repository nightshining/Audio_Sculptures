#pragma once

#include "ofMain.h"

class lineShape : public ofBaseApp{
    
public:
    lineShape();
    ~lineShape();
    void setup();
    void update();
    void draw();
    void drawLine(float x, float y, float rotate);
  
    void mouseDragged(int x, int y, int button);
    void mousePressed(int x, int y, int button);
    void mouseReleased(int x, int y, int button);

    float rotateShape;
    
    ofEasyCam cam;
    ofSoundPlayer pad;
};
