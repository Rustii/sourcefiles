//
//  main.c
//  UFCunlim
//
//
//  Copyright (c) 2014 Rustii. All rights reserved.
//


%hook UFCAccessControlManager

- (BOOL)hasAccessToEvent:(id)arg1 {
    
    return TRUE;  
 //   id ret = %orig;
    
 //   return ret;

    return %orig(arg1);
}


- (BOOL)hasAccessToFightPassSubscription {
    
    return TRUE;
    return %orig;
}

%end

%hook UFCIAPAccessControl

+ (BOOL)isFightPassSubActive {
    
    return TRUE;
    return %orig;
}

%end

%hook NLSBlackoutInfo

- (BOOL)isDeny {

    return FALSE;
    return %orig;
}

%end

%hook NLSLinearChannelResponse

- (id)blackout {
    
    id ret = %orig;
    
    return NULL;
    
    return ret;
}

%end

%hook NLSLinearChannel

- (id)blackout {
    
    id ret = %orig;
    
    return NULL;
    
    return ret;
}

%end

%hook NLSProgram

- (id)blackout {
    
    id ret = %orig;
    
    return NULL;
    
    return ret;
}

%end