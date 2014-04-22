#pragma once

#include "ofMain.h"

class drawCircle : public ofBaseApp{
    
public:
    drawCircle();
    ~drawCircle();
    void setup();
    void update();
    void draw();
    void shape(float rotateY, int x, int y, float size);
   
    void mouseDragged(int x, int y, int button);
    void mousePressed(int x, int y, int button);
    void mouseReleased(int x, int y, int button);
    
    ofEasyCam cam;
    float rotateShape;
    int counter;
    ofSoundPlayer sound;
    ofPoint pos;
    bool triggerSound;
};
