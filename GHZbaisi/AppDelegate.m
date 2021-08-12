//
//  AppDelegate.m
//  GHZbaisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "AppDelegate.h"
#import "GHZMainTabBarController.h"
#import "GHZADController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    

    GHZADController *vc = [GHZADController new];
    self.window.rootViewController = vc;
    
    [self.window makeKeyAndVisible];
    return YES;
}





@end
