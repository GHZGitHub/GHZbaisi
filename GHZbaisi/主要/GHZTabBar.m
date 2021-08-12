//
//  GHZTabBar.m
//  GHZbaisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZTabBar.h"
@interface GHZTabBar()
@property (nonatomic, strong)UIButton *addButton;
@end
@implementation GHZTabBar

- (void)layoutSubviews{
    [super layoutSubviews];
    NSInteger count = self.items.count + 1 ;
    CGFloat btnW = self.frame.size.width / count ;
    CGFloat btnH = self.frame.size.height;
    CGFloat btnX = 0;
    NSInteger i = 0;
    for (UIView *tabBarButton in self.subviews) {
        
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            if (i == 2) {
                i +=1;
            }
            btnX = (CGFloat)i * btnW;
            
            tabBarButton.frame = CGRectMake(btnX, 0, btnW, btnH);
            i++;
        }
    }

    self.addButton.centerX = self.width * 0.5;
    self.addButton.centerY = self.height * 0.5;
    
    
}
- (UIButton *)addButton
{
    if (_addButton == nil) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [btn sizeToFit];
        
        
        
        [self addSubview:btn];
        _addButton = btn;
    }
    
    return _addButton;
}
@end
