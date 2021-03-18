#import <UIKit/UIKit.h>

@class UISFSymbolImageView;

@interface UISFSymbolImageView : UIImageView

@property (assign) BOOL multicolor;
@property (strong, nonatomic) NSString *weight;
@property (strong, nonatomic) NSString *scale;
@property (strong, nonatomic) UIColor *iconColor;
@property (strong, nonatomic) NSString *systemName;

-(void)updateImage;

@end
