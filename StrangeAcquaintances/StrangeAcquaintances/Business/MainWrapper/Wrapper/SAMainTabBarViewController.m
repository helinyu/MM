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
#import "SAFellowTownsmanViewController.h"
#import "SANearbyViewController.h"
#import "SAMineViewController.h"
#import "SAMainPageViewController.h"
#import "SABaseNavViewController.h"

@interface SAMainTabBarViewController ()

@property (nonatomic, strong) SAMainPageViewController *mainPageVC;
@property (nonatomic, strong) SANearbyViewController *nearbyVC;
@property (nonatomic, strong) SAFellowTownsmanViewController *fellowTownsmanVC;
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

- (void)baseInit {
    _mainPageVC = [SAMainPageViewController new];
    _nearbyVC = [SANearbyViewController new];
    _fellowTownsmanVC = [SAFellowTownsmanViewController new];
    _mineVC = [SAMineViewController new];
    
    _mainPageVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"icon_main_page"] tag:SATarBarVCTypeMainPage];
    _nearbyVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"附近" image:[UIImage imageNamed:@"icon_main_nearby"] tag:SATarBarVCTypeNearby];
    _fellowTownsmanVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"老乡" image:[UIImage imageNamed:@"icon_main_moon"] tag:SATarBarVCTypeFellowTownsman];
    _mineVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"icon_main_mine"] tag:SATarBarVCTypeMine];
    
    SABaseNavViewController *mainNav = [[SABaseNavViewController alloc] initWithRootViewController:_mainPageVC];
    SABaseNavViewController *fellowTownsmanNav = [[SABaseNavViewController alloc] initWithRootViewController:_fellowTownsmanVC];
    SABaseNavViewController *nearbyNav = [[SABaseNavViewController alloc] initWithRootViewController:_nearbyVC];
    SABaseNavViewController *mineNav = [[SABaseNavViewController alloc] initWithRootViewController:_mineVC];
    
    self.viewControllers = @[mainNav, fellowTownsmanNav, nearbyNav, mineNav];

}

@end
