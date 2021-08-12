//
//  GHZBaseNavigationVController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZBaseNavigationVController.h"

@interface GHZBaseNavigationVController ()

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
}
@end
