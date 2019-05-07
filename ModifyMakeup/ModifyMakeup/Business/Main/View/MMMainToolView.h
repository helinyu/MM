//
//  MMMainToolView.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 13:46 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "MMBaseView.h"

typedef NS_ENUM(NSUInteger, MMBtnBusinessType) {
    MMBtnBusinessTypeMore,
    MMBtnBusinessTypeRatio,
    MMBtnBusinessTypeAlbum,
    MMBtnBusinessTypeCameraSwitch,
};

NS_ASSUME_NONNULL_BEGIN

@interface MMMainToolView : MMBaseView

@property (nonatomic, copy) IntergeBlock actionBlock;

@end

NS_ASSUME_NONNULL_END
