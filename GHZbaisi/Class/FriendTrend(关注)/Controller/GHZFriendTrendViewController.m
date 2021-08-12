//
//  GHZFriendTrendViewController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZFriendTrendViewController.h"

@interface GHZFriendTrendViewController ()

@end

@implementation GHZFriendTrendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
}

- (void)setUpNavBar
{
    // left
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"friendsRecommentIcon"] highImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] targer:self action:@selector(game)];
    
    
    
    // titleView
    self.navigationItem.title = @"我的关注";
}
- (void)game
{
    NSLog(@"玩游戏");
}

@end
