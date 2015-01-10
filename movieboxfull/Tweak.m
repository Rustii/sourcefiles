//
//  Tweak.m
//  
//
//  Created by Christopher Small on 5/01/2015.
//
//

// this is for CGRect in adsplaceholder
#include <QuartzCore/CALayer.h>


// We will deal with turbo mode here

%hook TurboModeManager

-(BOOL) turboModeEnabled {
    
  //  NSLog(@"im guessing this works, ;)");
    
    return TRUE;
    
    return %orig;

}

%end


// Try and deal with ads here

%hook AdsManager
 
-(BOOL) adsRemovedPermanetly {
    
 //   NSLog(@"check ads removed perm");

    return TRUE;
    
    return %orig;

}

-(BOOL) adsTemporaryRemoved {
    
  //  NSLog(@"we want to check ads removed temp");
    
    return TRUE;
    
    return %orig;
    
}

%end


%hook AdsPlaceholderView

-(id)initWithFrame:(CGRect)arg1 {
    
  //  NSLog(@"ads placeholder loaded here");

    id ret = %orig(arg1);
    
    return NULL;
    
    return ret;

}

%end


// Death With Bandwidth Throttling here

%hook ASIHTTPRequest

+(BOOL) isBandwidthThrottled {
    
  //  NSLog(@"is bandwidth throttled check");

    return FALSE;
    
    return %orig;

}

+(void) setShouldThrottleBandwidthForWWAN:(BOOL)arg1 {
    
   // NSLog(@"should set WWAN bandwidth check");

    arg1 = FALSE;
    
    return %orig(arg1);

}

%end


// turning on backgrounding here

%hook FlurryImpl

-(BOOL) isBackgroundSupported {
    
  //  %log;
    
  //  NSLog(@"Checking support here");

    return TRUE;
    
    return %orig;

}

%end

%hook FlurryGlobalVariableStorage

-(BOOL) backgroundSessionEnabled {
    
  //  %log;
    
  //  NSLog(@"checking if its enabled");

    return TRUE;
    
    return %orig;

}

%end

// stop the next video playing, this is the start of the settings panel

%hook VideoPlayerViewController

-(void) setCanPlayNextVideo:(BOOL)arg1 {
    
  //  %log;

  //  NSLog(@"we will just log this now");

    return %orig;
    
}

%end