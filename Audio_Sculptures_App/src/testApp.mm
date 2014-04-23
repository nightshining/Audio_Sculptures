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
    
    randomSculpture1 = ofRandom(3);
    randomSculpture2 = ofRandom(3);
    randomSculpture3 = ofRandom(3);
   
    cout << randomSculpture1 << endl;
    cout << randomSculpture2 << endl;
    cout << randomSculpture3 << endl;
    
    switch (randomSculpture1) {
        case 0:
            cir.setup();
            break;
        case 1:
            pent.setup();
            break;
        case 2:
            line.setup();
        break;
        default:
        cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture2) {
        case 0:
            cube.setup();
            break;
        case 1:
            squid.setup();
            break;
        case 2:
            dia.setup();
            break;
        default:
        cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture2) {
        case 0:
            rect.setup();
            break;
        case 1:
            chip.setup();
            break;
        case 2:
            cyl.setup();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    
}

//--------------------------------------------------------------
void testApp::update(){
    
    switch (randomSculpture1) {
        case 0:
            cir.update();
            break;
        case 1:
            pent.update();
            break;
        case 2:
            line.update();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture2) {
        case 0:
            cube.update();
            break;
        case 1:
            squid.update();
            break;
        case 2:
            dia.update();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture2) {
        case 0:
            rect.update();
            break;
        case 1:
            chip.update();
            break;
        case 2:
            cyl.update();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
}

//--------------------------------------------------------------
void testApp::draw(){

   
    switch (randomSculpture1) {
        case 0:
            cir.draw();
            break;
        case 1:
            pent.draw();
            break;
        case 2:
            line.draw();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture2) {
        case 0:
            cube.draw();
            break;
        case 1:
            squid.draw();
            break;
        case 2:
            dia.draw();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    switch (randomSculpture3) {
        case 0:
            rect.draw();
            break;
        case 1:
            chip.draw();
            break;
        case 2:
            cyl.draw();
            break;
        default:
            cout << "No Sculpture Selected" << endl;
    }
    
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
    if (randomSculpture3 == 1) {
    chip.receivedTouch(touch.x, touch.y);
    }
    if (randomSculpture2 == 2) {
    dia.touchTrigger(touch.x, touch.y);
    }
    if (randomSculpture2 == 0) {
    cube.touchTrigger(touch.x, touch.y);
    }
    if (randomSculpture1 == 0) {
    cir.touchTrigger(touch.x, touch.y);
    }
    if (randomSculpture3 == 2) {
    cyl.touchTrigger(touch.x, touch.y);
    }
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

    if( touch.id != 0 ){
        return;
    }
    
    if (randomSculpture3 == 0) {
    rect.slide(touch.x, touch.y);
    }
    if (randomSculpture2 == 1) {
    squid.slide(touch.x, touch.y);
    }
    if (randomSculpture1 == 1) {
    pent.slide(touch.x, touch.y);
    }
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
