#pragma once

#include "ofMain.h"

class drawShape : public ofBaseApp{
    
public:
    drawShape();
    ~drawShape();
    void setup();
    void update();
    void draw();
    void shape(float rotate, int x, int y);
    
    void mouseDragged(int x, int y, int button);
    void mousePressed(int x, int y, int button);
    void mouseReleased(int x, int y, int button);
    
    ofEasyCam cam;
    float rotateShape;

};
