
#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){
    
    ofBackground(255);
    ofSetVerticalSync(true);
    ofEnableAlphaBlending();
    ofEnableSmoothing();
    ofSetFrameRate(60);
    ofSetRectMode(OF_RECTMODE_CENTER);
    
    //Present Logo
    //flLogo.loadImage("fakelovelogo.jpg");
    //flLogo.resize(300, 300);
    
    //pent.setup();
    cyl.setup();
    
}

//--------------------------------------------------------------
void testApp::update(){
    
    //pent.update();
    cyl.update();
    

}
//--------------------------------------------------------------
void testApp::draw(){
    
    //Present Logo
    /*if (ofGetElapsedTimef() < 4.0) {
        ofPushMatrix();
        ofTranslate(ofGetWidth() / 2, ofGetHeight() / 2);
        ofScale(1.0, 1.0);
       // flLogo.setAnchorPoint(ofGetWidth() / 2, ofGetHeight() / 2);
        flLogo.draw(0, 0);
        ofPopMatrix();
    }*/
    
    //pent.draw();
    cyl.draw();
    
}

//--------------------------------------------------------------
void testApp::keyPressed(int key){
    
    if (key == ' ') {
        ofSetFullscreen(true);
    }
    
    
}
//--------------------------------------------------------------
void testApp::keyReleased(int key){

}

//--------------------------------------------------------------
void testApp::mouseMoved(int x, int y ){
    
   
}

//--------------------------------------------------------------
void testApp::mouseDragged(int x, int y, int button){
    
    //pent.mouseDragged(x, y, button);
    
}

//--------------------------------------------------------------
void testApp::mousePressed(int x, int y, int button){
 
    cyl.mousePressed(x, y, button);
    
}

//--------------------------------------------------------------
void testApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void testApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void testApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void testApp::dragEvent(ofDragInfo dragInfo){ 

}
