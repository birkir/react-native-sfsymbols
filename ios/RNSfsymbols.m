#import "RNSfsymbols.h"
#import "UISFSymbolImageView.h"
//#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>

@interface RNSfsymbolsManager : RCTViewManager
@end

@implementation RNSfsymbolsManager

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE(RNSfsymbols)

- (UIView *)view
{
  UISFSymbolImageView *imageView = [[UISFSymbolImageView alloc] init];
  return imageView;
}

RCT_CUSTOM_VIEW_PROPERTY(multicolor, BOOL, UISFSymbolImageView)
{
  [view setMulticolor:json];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(systemName, NSString, UISFSymbolImageView)
{
  [view setSystemName:json];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(size, Number, UISFSymbolImageView)
{
  [view setSize:json];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(resizeMode, NSstring, UISFSymbolImageView)
{
  [view setResizeMode:[RCTConvert UIViewContentMode:json]];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(iconColor, Number, UISFSymbolImageView) {
  UIColor *color = [RCTConvert UIColor:json];
  [view setIconColor:color];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(scale, NSString, UISFSymbolImageView) {
  [view setScale:json];
  [view updateImage];
}

RCT_CUSTOM_VIEW_PROPERTY(weight, NSString, UISFSymbolImageView) {
  [view setWeight:json];
  [view updateImage];
}

@end
  
