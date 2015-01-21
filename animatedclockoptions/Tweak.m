//
//  Tweak.m
//
//  Created by Christopher Small on 10/12/2014.
//
// DCA = Disable Clock Animation
// FDC = Fully disable clock
//
//setting the default values for install
#include <substrate.h>
#include <QuartzCore/CALayer.h>


BOOL DCAEnabled;
BOOL FDCEnabled;
BOOL STNEnabled;



%hook SBClockApplicationIconImageView


-(void) _setAnimating:(bool)arg1 {
    
 //   %log; (this is just logging when it doesnt work properly, i'll comment all logging out )
    
    NSString *settingsPath = @"/var/mobile/Library/Preferences/com.Rustii.animatedclockoptions~prefs.plist";
    
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];

    DCAEnabled = [[prefs objectForKey:@"DCAEnabled"] boolValue];
    FDCEnabled = [[prefs objectForKey:@"FDCEnabled"] boolValue];
    STNEnabled = [[prefs objectForKey:@"STNEnabled"] boolValue];



    if (DCAEnabled) {
        
        arg1 = FALSE;
        %orig(arg1);
    
    } else {
        
        %orig(arg1);
        
    }
    
}

-(void)setPaused:(BOOL)arg1 {
    
 //   %log;
    
    if (FDCEnabled) {
        
        arg1 = TRUE;
        %orig(arg1);
        
    } else {
        
        %orig(arg1);
        
    }
    
}




-(void)_updateUnanimatedWithComponents:(id)arg1 {
    
 //   %log;
    
    if (FDCEnabled) {
        
        arg1 = NULL;
        %orig(arg1);
    
    } else {
        
        %orig(arg1);
        
    }
    
}

- (id)initWithFrame:(CGRect)frame {
    
  //  %log;
    
    if (STNEnabled) {
      //  id ret = %orig;

        CALayer *seconds = MSHookIvar<CALayer *>(self, "_seconds");
        
        [seconds removeFromSuperlayer];
        
      //  return ret;
        
    }
    
    return %orig;

    
  
    
}

%end

