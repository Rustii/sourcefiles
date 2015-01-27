%hook AVCaptureStillImageOutput

-(void) setShutterSound:(unsigned long)Sound {

   // NSLog(@"Oh no i dont, i will not make a Sound  ");

    Sound = 0;

    return %orig(Sound);


}


%end