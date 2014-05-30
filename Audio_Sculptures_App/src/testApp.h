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
#include "Circles.h"
#include "drawGifs.h"


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

    //ofImage flLogo;
    
    drawShape shape; //n/a
    //drawCircle cir; //OK
    drawPentagon pent; //OK
    lineShape line; //OK
    drawCube cube; //OK
    drawSquid squid; //OK
    drawDiamond dia; //OK
    drawRect rect; //OK
    drawChip chip; //OK
    drawCyl cyl; //OK
    
    //Generate Button
    ofColor buttonColor;
    
    //Backgrounds
    vector<drawGifs> gif;
    vector<int> imgAmt;
    vector<string> imageNames;
    int randomImage;
    
    
    vector<Circles> circles;
    int cirPosX, cirPosY;
    
    int randomSculpture1, randomSculpture2, randomSculpture3;
    
    //Notes:
    
    //Overall need to fix size of everthing
    //Setup has all drone volume set 0.0
    //Need to draw 1.0 volume

    ///Randomize///
    ofPoint randomPos;
    int sizeRandom;
    float alpha, alphaSine, counter;
};


