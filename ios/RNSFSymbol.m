#import "RNSFSymbol.h"
#import "UISFSymbolImageView.h"
#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>

@interface RNSFSymbolManager : RCTViewManager
@end

@implementation RNSFSymbolManager

RCT_EXPORT_MODULE(RNSFSymbol)

- (UIView *)view
{
  UISFSymbolImageView *imageView = [[UISFSymbolImageView alloc] initWithImage:image];
  // @todo customize content mode?
  [imageView setContentMode:UIViewContentModeScaleAspectFit];
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

RCT_CUSTOM_VIEW_PROPERTY(color, UIColor, UISFSymbolImageView) {
  [view setTintColor:json];
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
