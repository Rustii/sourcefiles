#import <Preferences/Preferences.h>

@interface ZepPlaneModeFixListController: PSListController {
}
@end

@implementation ZepPlaneModeFixListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"ZepPlaneModeFix" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
