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
    
    cir.setup();
    pent.setup();
    line.setup();
    cube.setup();
    squid.setup();
    dia.setup();
    rect.setup();
    chip.setup();
    cyl.setup();
    
    //Random button
    randomPos.set(75, 75);
    sizeRandom = 30;

}

//--------------------------------------------------------------
void testApp::update(){
    
    cir.update();
    pent.update();
    line.update();
    cube.update();
    squid.update();
    dia.update();
    rect.update();
    chip.update();
    cyl.update();
    
    alphaSine += 0.08f;
    
    alpha = 255 * sin(alphaSine);
    
}

//--------------------------------------------------------------
void testApp::draw(){
    
    ////Randommize button
    ofPushMatrix();
    ofSetCircleResolution(100);
    ofSetColor(0, 0, 0, 100);
    ofNoFill();
    ofCircle(75, 75, sizeRandom);
    ofSetColor(0,0,0, alpha);
    ofFill();
    ofCircle(randomPos.x, randomPos.y, sizeRandom);
    ///ofDrawBitmapString("Randomize Sound Sculptures", 150, 75);
    ofPopMatrix();
    
    
    if (randomSculpture1 == 1 || randomSculpture2 == 1 || randomSculpture3 == 1) {
            cir.draw();
    }
    if (randomSculpture1 == 2 || randomSculpture2 == 2 || randomSculpture3 == 2) {
        
            pent.objectOn = true;
            pent.draw();
        
    } else {
        
            pent.objectOn = false;
    
    }
    if (randomSculpture1 == 3 || randomSculpture2 == 3 || randomSculpture3 == 3) {

            line.volumeLevel = 1.0;
            line.draw();
        
    } else {
            line.volumeLevel = 0.0;
    }
    if (randomSculpture1 == 4 || randomSculpture2 == 4 || randomSculpture3 == 4) {

            cube.draw();
    }
    if (randomSculpture1 == 5 || randomSculpture2 == 5 || randomSculpture3 == 5) {
            squid.trackVolume = 1.0;
            squid.draw();
    } else {
            squid.trackVolume = 0.0;
    }
    if (randomSculpture1 == 6 || randomSculpture2 == 6 || randomSculpture3 == 6) {

            dia.draw();
    }
    if (randomSculpture1 == 7 || randomSculpture2 == 7 || randomSculpture3 == 7) {
            rect.trackVolume = 0.50;
            rect.draw();
    } else {
            rect.trackVolume = 0.0;
    }
    if (randomSculpture1 == 8 || randomSculpture2 == 8 || randomSculpture3 == 8) {

            chip.draw();
    }
    if (randomSculpture1 == 9 || randomSculpture2 == 9 || randomSculpture3 == 9) {

            cyl.draw();
    }
    
    
    /////Fake logo
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
    if (randomSculpture1 == 8 || randomSculpture2 == 8 || randomSculpture3 == 8) {

    chip.receivedTouch(touch.x, touch.y);
   
    }
    
    if (randomSculpture1 == 6 || randomSculpture2 == 6 || randomSculpture3 == 6) {

    dia.touchTrigger(touch.x, touch.y);
    
    }
    if (randomSculpture1 == 4 || randomSculpture2 == 4 || randomSculpture3 == 4) {

    cube.touchTrigger(touch.x, touch.y);
    
    }
    if (randomSculpture1 == 1 || randomSculpture2 == 1 || randomSculpture3 == 1) {

    cir.touchTrigger(touch.x, touch.y);
    }
    if (randomSculpture1 == 9 || randomSculpture2 == 9 || randomSculpture3 == 9) {

    cyl.touchTrigger(touch.x, touch.y);
    }
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

    if( touch.id != 0 ){
        return;
    }
    
    
    if (randomSculpture1 == 7 || randomSculpture2 == 7 || randomSculpture3 == 7) {

    rect.slide(touch.x, touch.y);
    }
    
    if (randomSculpture1 == 5 || randomSculpture2 == 5 || randomSculpture3 == 5) {

    squid.slide(touch.x, touch.y);
    }
    
    if (randomSculpture1 == 2 || randomSculpture2 == 2 || randomSculpture3 == 2) {

    pent.slide(touch.x, touch.y);
    }
    
    if (randomSculpture1 == 3 || randomSculpture2 == 3 || randomSculpture3 == 3) {

    line.moveLine(touch.x, touch.y);
    
    }
    
    if (randomSculpture1 == 9 || randomSculpture2 == 9 || randomSculpture3 == 9) {

    cyl.moveCyl(touch.x, touch.y);
    }
    
    if (randomSculpture1 == 6 || randomSculpture2 == 6 || randomSculpture3 == 6) {

    dia.moveDiamond(touch.x, touch.y);
    }
    
    if (randomSculpture1 == 4 || randomSculpture2 == 4 || randomSculpture3 == 4) {

    cube.moveCube(touch.x, touch.y);
    }
    
}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

    if ( touch.id != 0) {
        return;
    }
    
    //// Random Button ////
    int dist1 = ofDist(randomPos.x, randomPos.y, touch.x, touch.y);
    
    if ( dist1 < sizeRandom ) {
    
    //Needs randomize button
    randomSculpture1 = ofRandom(10);
    randomSculpture2 = ofRandom(10);
    randomSculpture3 = ofRandom(10);
    
    cout << randomSculpture1 << endl;
    cout << randomSculpture2 << endl;
    cout << randomSculpture3 << endl;
    
    }
    
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
