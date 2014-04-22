#pragma once

#include "ofMain.h"


class drawPentagon : public ofBaseApp{
    
public:
    drawPentagon();
    ~drawPentagon();
    void setup();
    void update();
    void draw();
    
    void shape(int x, int y, int size, float alpha);
    
    float varyNoisePent(int amount, float speed); //useful noise function
    float noise; //public variable 

    void mouseDragged(int x, int y, int button);
    void mousePressed(int x, int y, int button);
    void mouseReleased(int x, int y, int button);
    
    
    ofEasyCam cam;
    float rotateShape;
    float alpha1, alpha2, alpha3, alpha4;
    float scaleParaX, scaleParaY, controlVolume, volumeNoise;
    float controlShape;
    ofSoundPlayer sound;
    
};
