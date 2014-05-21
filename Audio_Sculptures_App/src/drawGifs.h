
#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "ofxImageSequence.h"


class drawGifs : public ofxiOSApp{
	
public:
    drawGifs();
    ~drawGifs();
    void setup();
    void update();
    void draw();
    void exit();
    void loadNewSequence();
    void loadActionSequence();
	
    void touchDown(ofTouchEventArgs & touch);
    void touchMoved(ofTouchEventArgs & touch);
    void touchUp(ofTouchEventArgs & touch);
    void touchDoubleTap(ofTouchEventArgs & touch);
    void touchCancelled(ofTouchEventArgs & touch);
    
    void lostFocus();
    void gotFocus();
    void gotMemoryWarning();
    void deviceOrientationChanged(int newOrientation);
  
    ofxImageSequence sequence;
    vector<string> scenes;
};


