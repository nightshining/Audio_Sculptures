#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){	

    ofSetOrientation(OF_ORIENTATION_90_RIGHT);
    ofBackground(255);
    ofSetVerticalSync(true);
    ofEnableAlphaBlending();
    ofEnableSmoothing();
    ofSetFrameRate(60);
    ofSetRectMode(OF_RECTMODE_CENTER);
    
    cir.setup();
    
}

//--------------------------------------------------------------
void testApp::update(){

    cir.update();
    
}

//--------------------------------------------------------------
void testApp::draw(){

    cir.draw();
    
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

    cir.touchDown();
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}
