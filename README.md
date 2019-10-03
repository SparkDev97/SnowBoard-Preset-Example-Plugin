# SnowBoard Preset Example Plugin
 SnowBoard Preset Example Plugin

Add the "SnowBoardPresetProtocol.h" file to your tweak, and create a new class conforming to this protocol as shown in the example "Tweak.xm" file.

```
@protocol SnowBoardPresetProtocol <NSObject>

@required

@optional

// plistPath
// If this is set, SnowBoard will copy this plist into any newly saved preset when it is created.
// When a preset is selected, it will then copy it out of the preset and overwrite this file (If it exists in the preset).
// Return the plist path from this method
-(NSString*) plistPath;

// presetDidChange
// These are called when a preset is selected and applied, you can notify your tweak here to make any changes you need
// with the new settings
-(void) presetDidChange;
-(void) presetDidChangeToPreset:(NSString*) presetPath;

// savedNewPresetToPath
// Called when a new preset is created and includes the path to the preset
-(void) savedNewPresetToPath:(NSString*) presetPath;

// deletedPresetAtPath
// Called when a preset is deleted and includes the path to the preset
-(void) deletedPresetAtPath:(NSString*) presetPath;

// isDisabled
// Set this if you want to temporarily prevent your tweak integrating with SnowBoard Presets
// E.g. add a settings option to "Update with SnowBoard Presets"
-(BOOL) isDisabled;

@end
```