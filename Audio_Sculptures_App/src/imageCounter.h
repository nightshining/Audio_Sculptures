
//////IDEA: NOT IN USE
#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "ofxThreadedImageLoader.h"


class imageCounter : public ofxiOSApp{
	
public:
    imageCounter();
    ~imageCounter();
    
    void loadNewSequence(string imageName, int totalAmt);
    void bangFrames();
    void unloadSequence();
	void draw();
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
    
    ofxThreadedImageLoader loader;
    vector<ofImage> images;
    int counter;
};


