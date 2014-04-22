#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawCircle : public ofxiOSApp{
	
public:
    drawCircle();
    ~drawCircle();
    void setup();
    void update();
    void draw();
    void shape(float rotateY, int x, int y, float size);
    void exit();
	
    void touchDown(ofTouchEventArgs & touch);
    void touchMoved(ofTouchEventArgs & touch);
    void touchUp(ofTouchEventArgs & touch);
    void touchDoubleTap(ofTouchEventArgs & touch);
    void touchCancelled(ofTouchEventArgs & touch);
    
    void lostFocus();
    void gotFocus();
    void gotMemoryWarning();
    void deviceOrientationChanged(int newOrientation);
        
    ofEasyCam cam;
    float rotateShape;
    int counter;
    ofSoundPlayer sound;
    ofPoint pos;
    bool triggerSound;
    
};


