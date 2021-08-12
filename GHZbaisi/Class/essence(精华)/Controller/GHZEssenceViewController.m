//
//  GHZEssenceViewController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZEssenceViewController.h"

@interface GHZEssenceViewController ()

@end

@implementation GHZEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpNavBar];
}
// tabBarItem:设置tabbar上按钮(tabBarButoon)内容
// navigationitem: 设置 导航条上的内容(左边 右边 中间)
// UIBarButtoItem: 导航栏按钮具体的内容
// 设置导航条
- (void)setUpNavBar
{
    // left
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] highImage:[UIImage imageNamed:@"nav_item_game_click_icon"] targer:self action:@selector(game)];
    
    // right
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] highImage:[UIImage imageNamed:@"navigationButtonRandomClick"] targer:self action:@selector(right)];
    
    // titleView
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

- (void)game
{
    NSLog(@"玩游戏");
}
- (void)right
{
    NSLog(@"玩游戏");
}

@end
