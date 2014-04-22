#pragma once

#include "ofMain.h"


class drawCube : public ofBaseApp{
    
public:
    drawCube();
    ~drawCube();
    void setup();
    void update();
    void draw();
    
    void keyPressed(int key);

    void mouseDragged(int x, int y, int button);
    void mousePressed(int x, int y, int button);
    
    float rotate, noise, speed, alpha, alphaOutline;
    float sendNoise;
    ofEasyCam cam;

    
    bool trigger, triggerSound;
    
    ofSoundPlayer cubeSound;
    ofRectangle clickBox;
    //sculpture bounce for sound design
};
