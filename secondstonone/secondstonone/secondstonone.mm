#import <Preferences/Preferences.h>

@interface secondstononeListController: PSListController {
}
@end

@implementation secondstononeListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"secondstonone" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
