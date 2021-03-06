#import <UIKit/UIKit.h>
#import <Preferences/PSListController.h>
#import <Preferences/PSSpecifier.h>

@interface ExampleModulePreferencesController : PSListController
@end

@interface ExampleModuleEntry : NSObject
@end

@implementation ExampleModuleEntry
-(UIView*)moduleEntry {
  return [UIView new];
}
@end

@implementation ExampleModulePreferencesController
- (instancetype)init {
  self = [super init];

  return self;
}

- (id)specifiers {
  if(_specifiers == nil) {
    _specifiers = [self loadSpecifiersFromPlistName:@"DummyModuleSettings" target:self];
  }
  return _specifiers;
}
@end
