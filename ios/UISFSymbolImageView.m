#import "UISFSymbolImageView.h"

@implementation UISFSymbolImageView

- (void) updateImage {
  if (@available(iOS 13.0, *)) {
    UIImageSymbolWeight weight = UIImageSymbolWeightUnspecified;
    UIImageSymbolScale scale = UIImageSymbolScaleDefault;

    if ([_weight isEqualToString:@"ultralight"]) {
      weight = UIImageSymbolWeightUltraLight;
    } else if ([_weight isEqualToString:@"light"]) {
      weight = UIImageSymbolWeightLight;
    } else if ([_weight isEqualToString:@"thin"]) {
      weight = UIImageSymbolWeightThin;
    } else if ([_weight isEqualToString:@"regular"]) {
      weight = UIImageSymbolWeightRegular;
    } else if ([_weight isEqualToString:@"medium"]) {
      weight = UIImageSymbolWeightMedium;
    } else if ([_weight isEqualToString:@"semibold"]) {
      weight = UIImageSymbolWeightSemibold;
    } else if ([_weight isEqualToString:@"bold"]) {
      weight = UIImageSymbolWeightBold;
    } else if ([_weight isEqualToString:@"heavy"]) {
      weight = UIImageSymbolWeightHeavy;
    }

    if ([_scale isEqualToString:@"small"]) {
      scale = UIImageSymbolScaleSmall;
    } else if ([_scale isEqualToString:@"medium"]) {
      scale = UIImageSymbolScaleMedium;
    } else if ([_scale isEqualToString:@"large"]) {
      scale = UIImageSymbolScaleLarge;
    }

    UIImageSymbolConfiguration *configuration = [UIImageSymbolConfiguration configurationWithPointSize:[UIFont systemFontSize] weight:weight scale:scale];
    UIImage *image = [UIImage systemImageNamed:_systemName withConfiguration:configuration];

    if (_multicolor) {
      [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    } else {
      [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }

    [self setImage:image];
  }
}

@end
