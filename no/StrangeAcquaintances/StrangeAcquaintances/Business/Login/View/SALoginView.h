//
//  SALoginView.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 21:33 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SABaseView.h"


typedef NS_ENUM(NSInteger, ASLoginViewActionType) {
    ASLoginViewActionTypeLogin =1001,
    
    
};

NS_ASSUME_NONNULL_BEGIN

@interface SALoginView : SABaseView

typedef void(^IntergerBlock)(NSInteger value);
@property (nonatomic, copy) IntergerBlock actionBlock;

@end

NS_ASSUME_NONNULL_END
