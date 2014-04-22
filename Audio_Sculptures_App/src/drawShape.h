#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"

class drawShape : public ofxiOSApp{
	
public:
    drawShape();
    ~drawShape();
    void setup();
    void update();
    void draw();
    void exit();
    void shape(float rotate, int x, int y);
	
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
    
};


