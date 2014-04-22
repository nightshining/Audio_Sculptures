#pragma once

#include "ofMain.h"

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



class testApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();
     
    
        void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
    
    ofImage flLogo;
    
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
