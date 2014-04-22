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
    
    flLogo.loadImage("fakelovelogo.jpg");
    flLogo.resize(300, 300);
    
    //chip.setup();
    //rect.setup();
    //dia.setup();
    //squid.setup();
    //cube.setup();
    //line.setup();
    pent.setup();
    //cir.setup();

}

//--------------------------------------------------------------
void testApp::update(){
    
    //chip.update();
    //rect.update();
    //dia.update();
    //squid.update();
    //cube.update();
    //line.update();
    pent.update();
    //cir.update();

}

//--------------------------------------------------------------
void testApp::draw(){

    //chip.draw();
    //rect.draw();
    //dia.draw();
    //squid.draw();
    //cube.draw();
    //line.draw();
    pent.draw();
    //cir.draw();
    
    
    if (ofGetElapsedTimef() < 4.0) {
     ofPushMatrix();
     ofSetColor(255);
     ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
     ofScale(1.0, 1.0);
     //flLogo.setAnchorPoint(ofGetWidth() / 2, ofGetHeight() / 2);
     flLogo.draw(0, 0);
     ofPopMatrix();
     }
        
    
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){
    
    if( touch.id != 0 ){
        return;
    }
    
    //chip.receivedTouch(touch.x, touch.y);
    //dia.touchTrigger(touch.x, touch.y);
    //cube.touchTrigger(touch.x, touch.y);
    //cir.touchTrigger(touch.x, touch.y);

}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

    if( touch.id != 0 ){
        return;
    }
    
    //rect.slide(touch.x, touch.y);
    //squid.slide(touch.x, touch.y);
    pent.slide(touch.x, touch.y);
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
