//
//  GHZBaseNavigationVController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZBaseNavigationVController.h"

@interface GHZBaseNavigationVController ()<UIGestureRecognizerDelegate>

@end

@implementation GHZBaseNavigationVController

+ (void)load{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
    [navBar  setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20]}];
    [navBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}
-(instancetype)initWithRootViewController:(UIViewController *)rootViewController title:(NSString *)title imageName:(NSString *)imageName{
    self = [super initWithRootViewController:rootViewController];
    if (self) {
        self.tabBarItem.title = title;
        self.tabBarItem.image = [UIImage
                                 imageNamed:imageName];
       
        
        
        [ self.tabBarItem setTitleTextAttributes: @{NSForegroundColorAttributeName : [UIColor blackColor],NSFontAttributeName:[UIFont systemFontOfSize:14]} forState:UIControlStateNormal];
        
    }
    return  self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.delegate = self;
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        viewController.navigationItem.leftBarButtonItem  = [UIBarButtonItem backBarButtonItemWithImage:[UIImage imageNamed:@"navigationButtonReturn"] heighImage:[UIImage imageNamed:@"navigationButtonReturnClick"] targer:self action:@selector(back) title:@"返回"];
    }

    [super pushViewController:viewController animated:animated];
}
- (void)back{
    [self popViewControllerAnimated:NO];
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    return  self.childViewControllers.count > 1;
}
@end
