#import "SnowBoardPresetProtocol.h"

@interface SnowBoardPresetExamplePlugin : NSObject<SnowBoardPresetProtocol>
@end

@implementation SnowBoardPresetExamplePlugin

-(NSString*) plistPath
{
	return @"/var/mobile/Library/Preferences/com.my.prefsfile.plist";
}

@end