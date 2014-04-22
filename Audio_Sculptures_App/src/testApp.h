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

    drawShape shape;
    drawCircle cir;
    drawPentagon pent;
    lineShape line;
    drawCube cube;
    drawSquid squid;
    drawDiamond dia;
    drawRect rect;
    drawChip chip;
    drawCyl cyl;
    

};


