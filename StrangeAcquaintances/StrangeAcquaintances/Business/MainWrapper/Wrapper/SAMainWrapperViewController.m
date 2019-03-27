//
//  SAMainWrapperViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/3/24 22:22 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAMainWrapperViewController.h"
#import "SAMainTabBarViewController.h"

@interface SAMainWrapperViewController ()

@property (nonatomic, strong) SAMainTabBarViewController *tabBarController;


@end

@implementation SAMainWrapperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    _tabBarController = [[SAMainTabBarViewController alloc] init];;
    [self.view addSubview:_tabBarController.view];
    _tabBarController.view.backgroundColor = [UIColor purpleColor];
    
}


@end
