//
//  GHZNewController.m
//  baisi
//
//  Created by 高浩哲 on 2021/8/11.
//

#import "GHZNewController.h"

@interface GHZNewController ()

@end

@implementation GHZNewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // titleView
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 导航栏左边的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] targer:self action:@selector(game)];
}
- (void)game{
    
}
@end
