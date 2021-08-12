//
//  UIBarButtonItem+item.m
//  GHZbaisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)
+ (instancetype)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage targer:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:highImage forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    

    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
+ (instancetype)barButtonItemWithImage:(UIImage *)image selImage:(UIImage *)selImage targer:(id)target action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:selImage forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
+ (instancetype)backBarButtonItemWithImage:(UIImage *)image heighImage:(UIImage *)heighImage targer:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:title forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [backButton setImage:image forState:UIControlStateNormal];
    [backButton setImage:heighImage forState:UIControlStateHighlighted];
    
    [backButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [backButton sizeToFit];
    backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    
    
    return [[UIBarButtonItem alloc] initWithCustomView:backButton];
}


@end
