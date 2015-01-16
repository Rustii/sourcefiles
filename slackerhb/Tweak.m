//
//  Tweak.m
//  
//
//  Created by Christopher Small on 5/12/2014.
//
//

#include <IOKit/hid/IOHIDEvent.h>

%hook SpringBoard

-(void) _menuButtonUp:(__IOHIDEvent *)arg1 {

//NSLog(@"im guessing this works, UP  ");

     arg1 = NULL;

 
}

-(void) _menuButtonDown:(__IOHIDEvent *)arg1 {

//NSLog(@"im guessing this works, DOWN  ");

    arg1 = NULL;

}

%end