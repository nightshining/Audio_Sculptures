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
    drawCircle cir;
    drawPentagon pent; //works
    lineShape line; //works
    drawCube cube; //works really well, could use higher volume
    drawSquid squid; //up volume on loop
    drawDiamond dia; //fix touch, fix shape
    drawRect rect; //works
    drawChip chip; //works
    drawCyl cyl; //doesn't work
    
    
    //Notes:
    
    //Overall need to fix size of everthing

};


