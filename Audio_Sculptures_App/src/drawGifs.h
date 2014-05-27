//////IDEA: NOT IN USE

#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "ofxImageSequence.h"


class drawGifs : public ofxiOSApp{
	
public:
    drawGifs();
    ~drawGifs();
    void draw();
    void exit();
    void loadNewSequence(string imageName, int totalAmt);
    void unloadSequence();
	
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
    
};


