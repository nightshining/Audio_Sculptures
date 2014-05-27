

//////IDEA: NOT IN USE

#include "imageCounter.h"


imageCounter::imageCounter() {
    
}

imageCounter::~imageCounter() {
    
}

void imageCounter::loadNewSequence(string imageName, int totalAmt) {
    
    ofSetLogLevel(OF_LOG_VERBOSE);
	ofSetVerticalSync(true);

	images.resize(totalAmt * 2);
	for(int i = 0; i < totalAmt; ++i) {
		loader.loadFromDisk(images[i * 2], ofToString(imageName) + ofToString(i) + ".png");
	}
    counter = 0;
}

void imageCounter::bangFrames() {
    
    counter++;
    
    if (counter >= images.size()) {
        counter = 0;
    }
    
    cout << "Counter: " << counter << endl;
    
}

void imageCounter::unloadSequence() {
    
    
}

//--------------------------------------------------------------
void imageCounter::draw(){
    
    // draw the images.
	ofSetColor(255);
    
	for(int i = 0; i < (int)images.size(); ++i) {
        if (images[i].isAllocated()) {
            
            images[counter].draw(0, 0, images[counter].getWidth(), images[counter].getHeight());
        
        }
	}
	
    
}


//--------------------------------------------------------------
void imageCounter::exit(){
    
}

//--------------------------------------------------------------
void imageCounter::touchDown(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void imageCounter::touchMoved(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void imageCounter::touchUp(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void imageCounter::touchDoubleTap(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void imageCounter::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void imageCounter::lostFocus(){
    
}

//--------------------------------------------------------------
void imageCounter::gotFocus(){
    
}

//--------------------------------------------------------------
void imageCounter::gotMemoryWarning(){
    
}

//--------------------------------------------------------------
void imageCounter::deviceOrientationChanged(int newOrientation){
    
}
