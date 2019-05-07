//
//  MMMainViewController.m
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 11:53 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMMainViewController.h"
#import "MMMainView.h"
#import <TZImagePickerController/TZImagePickerController.h>
#import "MMModifyViewController.h"

#import "MMMainToolView.h"
#import "MMainTakeView.h"
#import "MMPhotoLayerView.h"

@interface MMMainViewController ()<TZImagePickerControllerDelegate>

@property (nonatomic, strong) MMMainView *view;

@property (nonatomic, strong) TZImagePickerController *imagePickVc;

@end

@implementation MMMainViewController

MM_DYNAMIC_VIEW(MMMainView);

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];

    [self bindInit];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)bindInit {
    W_S;
    self.view.topToolView.actionBlock = ^(NSUInteger value) {
        if (value == MMBtnBusinessTypeMore) {
            DLog(@"do more thing");
        }
        else if (value == MMBtnBusinessTypeRatio) {
            DLog(@"do ratio thing");
        }
        else if (value == MMBtnBusinessTypeAlbum) {
            [weakSelf onSelectImageAction];
            DLog(@"do album thing");
        }
        else {
            DLog(@"do camera switch");
        }
    };
}

- (void)onSelectImageAction {
    if (!_imagePickVc) {
        TZImagePickerController *imagePickerVc = [[TZImagePickerController alloc] initWithMaxImagesCount:1 delegate:self];
        _imagePickVc = imagePickerVc;
    }
    W_S;
    [_imagePickVc setDidFinishPickingPhotosHandle:^(NSArray<UIImage *> *photos, NSArray<PHAsset *> *assets, BOOL isSelectOriginalPhoto) {
        DLog(@"photos :%@, assets:%@, isselectori:%d",photos, assets, isSelectOriginalPhoto);
        MMModifyViewController *vc = [MMModifyViewController new];
        vc.asset = assets.firstObject;
        vc.image = photos.firstObject;
        [weakSelf.navigationController pushViewController:vc animated:YES];
    }];
    [self presentViewController:_imagePickVc animated:YES completion:nil];
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
