//
//  Tweak.m
//  
//
//  Created by Christopher Small on 5/01/2015.
//
//

#include <QuartzCore/CALayer.h>



%hook AppDelegate

-(BOOL) checkShowAdvertising {
    
    return FALSE;
    
    return %orig;

}

%end

%hook GADBannerView

-(id)initWithFrame:(CGRect)arg1 {

    id ret = %orig(arg1);
    
    return NULL;
    
    return ret;

}

%end