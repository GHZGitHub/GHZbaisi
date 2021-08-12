//
//  GHZMainTabBarController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZMainTabBarController.h"

#import "GHZNewController.h"
#import "GHZMeController.h"
#import "GHZPublishController.h"
#import "GHZEssenceViewController.h"
#import "GHZFriendTrendViewController.h"
#import "GHZBaseNavigationVController.h"
#import "GHZTabBar.h"


@interface GHZMainTabBarController ()

@end

@implementation GHZMainTabBarController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupChildController];
        
        }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setValue:[GHZTabBar new] forKeyPath:@"tabBar"];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)setupChildController{
    NSArray<NSString *>*rootVCClassNameArray = @[@"GHZEssenceViewController",@"GHZNewController",@"GHZFriendTrendViewController",@"GHZMeController"];
    
    NSArray<NSString *>*titleArray = @[@"精华",@"新帖",@"关注",@"我的"];
    
    NSArray<NSString *>*imageNameArray = @[@"tabBar_essence_icon",@"tabBar_new_icon",@"tabBar_friendTrends_icon",@"tabBar_me_icon"];
    for (NSInteger i = 0; i < 4; i++) {
        Class rootVCClass = NSClassFromString(rootVCClassNameArray[i]);
        UIViewController *rootVC = [(UIViewController *)[rootVCClass alloc]init];
        
        GHZBaseNavigationVController *nav = [[GHZBaseNavigationVController alloc]initWithRootViewController:rootVC title:titleArray[i] imageName:imageNameArray[i]];
       
        [self addChildViewController:nav];
    }
}
@end
