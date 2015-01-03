//
//  Tweak.m
//  
//
//  Created by Christopher Small on 5/12/2014.
//
//

%hook SBReachabilitySettings

// Allows Reachability on the 5S, think about disabling
// it on 6/+ and changing the button presses.
-(BOOL)allowOnAllDevices {
    
    return TRUE; // this will be an on off switch if i decide to keep it 5s exclusive
    
    return %orig;
    
}

// set the number of touches for reachability (Should work on 6/+
// so ill have to check later)
-(void)setNumberOfTapsForTapTrigger:(unsigned long long)arg1 {
    
    arg1 = 3; // make this set in settings pane
    
    return %orig (arg1); //(this is where id self comes in)
    
}


%end // do not forget to close off here
