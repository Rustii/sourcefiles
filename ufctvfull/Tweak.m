//
//  main.c
//  UFCunlim
//
//
//  Copyright (c) 2014 Rustii. All rights reserved.
//
#include <QuartzCore/CALayer.h>

// Deal with sub/vip HERE VVVVV

%hook NLAccountItem

- (void)setIsVIPUser:(BOOL)arg1 {

    arg1 = TRUE;
    return %orig(arg1);
    
}


- (BOOL)hasAccessToVodSubscription {
    
    return TRUE;
    return %orig;
}

%end

%hook MKStoreManager

+ (BOOL)isFightPassSubscriptionPurchased {
    
    return TRUE;
    return %orig;
}

+ (BOOL)isVodSubscriptionPurchased {
    
    return TRUE;
    return %orig;
}

%end

%hook NLUFCAccountItem

- (void)setIsFightPassSubscriber:(BOOL)arg1 {
    
    arg1 = TRUE;
    return %orig(arg1);
}


- (BOOL)isFightPassSubscriber {
    
    return TRUE;
    return %orig;
}


- (void)setIsVodSubscriber:(BOOL)arg1 {
    
    arg1 = TRUE;
    return %orig(arg1);
}


- (BOOL)isVodSubscriber {
    
    return TRUE;
    return %orig;
}


%end

// im dealing with the blackout here.

%hook UFCProgramDetailsItem;

- (void)setBlackoutNode:(id)arg1 {
    
    arg1 = NULL;
    return %orig(arg1);
}

- (BOOL)canBuyViaFightPassSub {
    
    return TRUE;
    return %orig;
}

%end

// Deal with jailbreak Checks HERE VVVVV

%hook LocalyticsSession;

- (BOOL)isDeviceJailbroken {
    
    return FALSE;
    return %orig;
}

%end

%hook GADDevice;

- (BOOL)isJailbroken {
    
    return FALSE;
    return %orig;
}

%end


//seeing if i can force HQ
%hook ConfigurationItem;

- (void)setVideoQualityNormal:(id)arg1 {

    arg1 = NULL;
    return %orig(arg1);
}

%end

// Deal with the banner here 

%hook GADBannerView

-(id)initWithFrame:(CGRect)arg1 {

    id ret = %orig(arg1);
    
    return NULL;
    
    return ret;

}

%end