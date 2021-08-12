//
//  GHZBaseNavigationVController.h
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHZBaseNavigationVController : UINavigationController
-(instancetype)initWithRootViewController:(UIViewController *)rootViewController title:(NSString *)title imageName:(NSString *)imageName;
@end

NS_ASSUME_NONNULL_END
