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
    
    return TRUE;
    
    return %orig;

}

%end


// Try and deal with ads here

%hook AdsManager

/*
-(BOOL) searchTermIsGodsMercy:(id)arg1 {
    
    return TRUE;
    
    return %orig(arg1);

}
*/
 
-(BOOL) adsRemovedPermanetly {

    return TRUE;
    
    return %orig;

}

-(BOOL) adsTemporaryRemoved {
    
    return TRUE;
    
    return %orig;
    
}

%end


%hook AdsPlaceholderView

-(id)initWithFrame:(CGRect)arg1 {

    id ret = %orig(arg1);
    
    return NULL;
    
    return ret;

}

%end


// Death With Bandwidth Throttling here

%hook ASIHTTPRequest

+(BOOL) isBandwidthThrottled {

    return FALSE;
    
    return %orig;

}

+(void) setShouldThrottleBandwidthForWWAN:(BOOL)arg1 {

    arg1 = FALSE;
    
    return %orig(arg1);

}

%end


// turning on backgrounding here

%hook FlurryImpl

-(BOOL) isBackgroundSupported {

    return TRUE;
    
    return %orig;

}

%end

%hook FlurryGlobalVariableStorage

-(BOOL) backgroundSessionEnabled {

    return TRUE;
    
    return %orig;

}

%end