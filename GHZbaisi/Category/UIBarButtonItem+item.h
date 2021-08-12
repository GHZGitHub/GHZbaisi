//
//  UIBarButtonItem+item.h
//  GHZbaisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (item)
+ (instancetype)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage targer:(id)target action:(SEL)action;

+ (instancetype)barButtonItemWithImage:(UIImage *)image selImage:(UIImage *)selImage targer:(id)target action:(SEL)action;

+(instancetype)backBarButtonItemWithImage:(UIImage *)image heighImage:(UIImage *)heighImage targer:(id)target action:(SEL)action title:(NSString *)title;
@end

NS_ASSUME_NONNULL_END
