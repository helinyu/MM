//
//  MMMainView.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 11:55 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMBaseView.h"

@class MMMainToolView, MMainTakeView, MMPhotoLayerView;

NS_ASSUME_NONNULL_BEGIN

@interface MMMainView :MMBaseView

@property (nonatomic, assign) MMPhotoLayerRatioHWType ratioType;

@property (nonatomic, strong, readonly) MMMainToolView *topToolView;
@property (nonatomic, strong, readonly) MMainTakeView *bottomTakeView; // 160
@property (nonatomic, strong, readonly) MMPhotoLayerView *photoLayerView;

@end

NS_ASSUME_NONNULL_END
