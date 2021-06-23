#import <UIKit/UIKit.h>

@class UISFSymbolImageView;

@interface UISFSymbolImageView : UIImageView

@property (assign) BOOL multicolor;
@property (strong, nonatomic) NSString *weight;
@property (strong, nonatomic) NSString *scale;
@property (strong, nonatomic) NSNumber *size;
@property (strong, nonatomic) UIColor *iconColor;
@property (assign) UIViewContentMode resizeMode;
@property (strong, nonatomic) NSString *systemName;

-(void)updateImage;

@end
