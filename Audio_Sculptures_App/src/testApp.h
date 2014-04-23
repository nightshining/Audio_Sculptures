#pragma once

#include "ofMain.h"
#include "ofxiOS.h"
#include "ofxiOSExtras.h"
#include "drawShape.h"
#include "drawCircle.h"
#include "drawPentagon.h"
#include "lineShape.h"
#include "drawCube.h"
#include "drawSquid.h"
#include "drawDiamond.h"
#include "drawRect.h"
#include "drawChip.h"
#include "drawCyl.h"

class testApp : public ofxiOSApp{
	
    public:
        void setup();
        void update();
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

    ofImage flLogo;
    
    drawShape shape;
    drawCircle cir; //middle top
    drawPentagon pent; //middle
    lineShape line; //cam
    drawCube cube; //left
    drawSquid squid; //cam
    drawDiamond dia; //right
    drawRect rect; //middle
    drawChip chip; //middle
    drawCyl cyl; //middle bottom
    
    int randomSculpture1, randomSculpture2, randomSculpture3;
    
    //Notes:
    
    //Overall need to fix size of everthing

};


