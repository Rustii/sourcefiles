#import <Preferences/Preferences.h>

@interface AnimatedClockOptionsListController: PSListController {
}
@end

@implementation AnimatedClockOptionsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"AnimatedClockOptions" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
