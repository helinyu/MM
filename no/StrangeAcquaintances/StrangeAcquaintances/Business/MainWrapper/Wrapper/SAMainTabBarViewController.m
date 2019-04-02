//
//  SAMainTabBarViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/3/24 22:40 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAMainTabBarViewController.h"
#import "SABookshelfViewController.h"
#import "SARankViewController.h"
#import "SAMineViewController.h"
#import "SAMainPageViewController.h"
#import "SABaseNavViewController.h"

@interface SAMainTabBarViewController ()

@property (nonatomic, strong) SAMainPageViewController *mainPageVC;
@property (nonatomic, strong) SARankViewController *rankVC;
@property (nonatomic, strong) SABookshelfViewController *bookshelfVC;
@property (nonatomic, strong) SAMineViewController *mineVC;

@end

typedef NS_ENUM(NSUInteger, SATarBarVCType) {
    SATarBarVCTypeMainPage,
    SATarBarVCTypeNearby,
    SATarBarVCTypeFellowTownsman,
    SATarBarVCTypeMine
};

@implementation SAMainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self baseInit];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)baseInit {
    _mainPageVC = [SAMainPageViewController new];
    _rankVC = [SARankViewController new];
    _bookshelfVC = [SABookshelfViewController new];
    _mineVC = [SAMineViewController new];
    
    _mainPageVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"icon_main_page"] tag:SATarBarVCTypeMainPage];
    _rankVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"排行" image:[UIImage imageNamed:@"icon_main_nearby"] tag:SATarBarVCTypeNearby];
    _bookshelfVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"书架" image:[UIImage imageNamed:@"icon_main_moon"] tag:SATarBarVCTypeFellowTownsman];
    _mineVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"icon_main_mine"] tag:SATarBarVCTypeMine];
    
    SABaseNavViewController *mainNav = [[SABaseNavViewController alloc] initWithRootViewController:_mainPageVC];
    SABaseNavViewController *rankNav = [[SABaseNavViewController alloc] initWithRootViewController:_rankVC];
    SABaseNavViewController *bookshelfVC = [[SABaseNavViewController alloc] initWithRootViewController:_bookshelfVC];
    SABaseNavViewController *mineNav = [[SABaseNavViewController alloc] initWithRootViewController:_mineVC];
    
    self.viewControllers = @[mainNav, rankNav, bookshelfVC, mineNav];

}

@end
