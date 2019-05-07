//
//  MMModifyViewController.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 16:42 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMBaseViewController.h"
@class PHAsset;

NS_ASSUME_NONNULL_BEGIN

@interface MMModifyViewController : UIViewController

@property (nonatomic, strong) PHAsset *asset;
@property (nonatomic, strong) UIImage *image;

@end

NS_ASSUME_NONNULL_END
