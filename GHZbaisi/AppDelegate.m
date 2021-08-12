//
//  AppDelegate.m
//  GHZbaisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "AppDelegate.h"
#import "GHZMainTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    

    GHZMainTabBarController *tabBarVC  = [GHZMainTabBarController new];
    self.window.rootViewController = tabBarVC;
    
    [self.window makeKeyAndVisible];
    return YES;
}





@end
