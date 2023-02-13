#import <React/RCTComponent.h>
#import <React/RCTBridge.h>
#import <UIKit/UIKit.h>

@interface RNSfsymbols : UIImageView<RCTComponent>

- (instancetype)initWithBridge:(RCTBridge *)bridge;

@property (nonatomic, assign) BOOL multiColor;
@property (nonatomic, assign) UIImageSymbolWeight weight;
@property (nonatomic, assign) UIImageSymbolScale scale;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) UIViewContentMode resizeMode;
@property (nonatomic, copy) NSString *systemName;

@end
