//
//  Tweak.m
//  
//
//  Created by Christopher Small on 19/12/2014.
//
//
#include <substrate.h>
#include <QuartzCore/CALayer.h>

BOOL STNEnabled;

%hook SBClockApplicationIconImageView
- (id)initWithFrame:(CGRect)frame {
    
    NSString *settingsPath = @"/var/mobile/Library/Preferences/com.Rustii.secondstonone~prefs.plist";
    
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
    
    STNEnabled = [[prefs objectForKey:@"STNEnabled"] boolValue];
    
    
    if (STNEnabled) {
        id ret = %orig;
        CALayer *seconds = MSHookIvar<CALayer *>(self, "_seconds");
        
        [seconds removeFromSuperlayer];
        
        return ret;
    
    }else{
        
        id ret = %orig;
        return ret;
    
    }
    
    
    
}


%end