//
//  Tweak.m
//  
//
//  Created by Christopher Small on 18/12/2014.
//
//
// APM = Airplane mode enabled



/*
%hook RadiosPreferences

-(BOOL)airplaneMode
{
 NSString *settingsPath = @"/var/mobile/Library/Preferences/com.Rustii.zepplanemodefix~prefs.plist";
 
 NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
 
 APMEnabled = [[prefs objectForKey:@"APMEnabled"] boolValue];
 
    if (!APMEnabled)
    {
        return %orig;
    }
    else if (APMEnabled)
    {
        return TRUE;
        
    }
    return %orig;
}

%end

%hook SBTelephonyManager

-(void)setIsInAirplaneMode:(BOOL)arg1

{

    arg1 = FALSE;
    
    return %orig(arg1);
    
}

 */

%hook SBTelephonyManager
-(BOOL)isInAirplaneMode

{
    

        return FALSE;
        return %orig;
    
    
}

%end

