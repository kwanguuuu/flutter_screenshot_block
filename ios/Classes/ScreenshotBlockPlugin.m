#import "ScreenshotBlockPlugin.h"
#import <screenshot_block/screenshot_block-Swift.h>

@implementation ScreenshotBlockPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftScreenshotBlockPlugin registerWithRegistrar:registrar];
}
@end
