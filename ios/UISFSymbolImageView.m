#import "UISFSymbolImageView.h"

@implementation UISFSymbolImageView

- (void) updateImage {
  if (@available(iOS 13.0, *)) {
    UIImageSymbolWeight weight = UIImageSymbolWeightUnspecified;
    UIImageSymbolScale scale = UIImageSymbolScaleDefault;
    CGFloat size = [UIFont systemFontSize];
      
    if (_size != nil) {
      size = [_size doubleValue];
    }

    [self setContentMode:_resizeMode];
      
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

    UIImageSymbolConfiguration *configuration = [UIImageSymbolConfiguration configurationWithPointSize:size weight:weight scale:scale];
    UIImage *image = [UIImage imageNamed:_systemName inBundle:NULL withConfiguration:configuration];
    if(!image) {
      image = [UIImage systemImageNamed:_systemName withConfiguration:configuration];
    }
    
    if (_multicolor) {
      self.tintColor = nil;
      if (_iconColor != nil) {
        self.image = [image imageWithTintColor:_iconColor renderingMode:UIImageRenderingModeAlwaysOriginal];
      } else {
        self.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
      }
    } else {
      self.tintColor = _iconColor;
      self.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
  }
}

@end
