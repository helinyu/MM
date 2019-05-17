//
//  SALoginViewController.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:19 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SALoginViewController.h"

#import "SALoginProtocol.h"
#import "BeeHive.h"
#import "SALoginSerice.h"

#import "SALoginView.h"

@interface SALoginViewController ()<SALoginProtocol>

@property (nonatomic, strong) SALoginView *view;

@end

@implementation SALoginViewController

SA_DYNAMIC_VIEW(SALoginView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"登录";
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(onRegisterAction:)];

    [self bindInit];
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

- (void)bindInit {
    
//    self.view.actionBlock = ^(NSInteger value) {
//        if (value == ASLoginViewActionTypeLogin) {
            [OBTAIN_MGR(SALoginSerice) requestLoginWithPhone:@(13760412360) password:@"123456a" then:^(BOOL isLogin, NSError * _Nonnull error) {
                if (error) {
                    DLog(@"登录失败");
                    return;
                }
                DLog(@"登录成功");
            }];
//        }
//    };
//     -2147483648-2147483647
//    BOOL flag = [[MMKV defaultMMKV] setInt64:2147483648 forKey:@"key"];
        BOOL flag = kSetInteger(2147483647, @"key");
//    [self test:2147483647 key:@"key"];
////        BOOL flag = kSetInt64(2147483647, @"key");
    NSInteger value = kGetInteger(@"key");
    DLog(@"value :%ld",(long)value);
    DLog(@"");
    
}

- (void)test:(NSInteger)value key:(NSString *)key {
//    if (is64Bit()) {
//        kSetInt64(value, key);
//    }else {
//        kSetInt32(value, key);
//    }
}


-(void)setIntergerValue:(NSInteger)value forKey:(NSString *)key {
#if defined(__LP64__) && __LP64__
    kSetInt64(value, key);
#else
    kSetInt32(value, key);
#endif
}

- (void)onRegisterAction:(UIBarButtonItem *)item {
    [SARouter jumpToWithNavVC:SA_VC_IndexTypeRegister isPresentFromVC:self then:nil];
}

#pragma mark - block



@end
