#import <UIKit/UIKit.h>

@class UISFSymbolImageView;

@interface UISFSymbolImageView : UIImageView

@property (assign) BOOL multicolor;
@property (strong, nonatomic) NSString *weight;
@property (strong, nonatomic) NSString *scale;
@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSString *systemName;

-(void)updateImage;

@end
