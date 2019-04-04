//
//  SADownloadItemModel.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 11:35 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SADownloadItemModel : NSObject

@property (nonatomic, assign) NSInteger level;
@property (nonatomic, strong) id<NSObject> downloadItem;

@end

NS_ASSUME_NONNULL_END
