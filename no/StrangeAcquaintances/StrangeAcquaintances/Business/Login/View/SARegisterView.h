//
//  SARegisterView.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/25 20:56 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SABaseView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SARegisterView : SABaseView

@property (nonatomic, strong, readonly) UITextField *accountTF;
@property (nonatomic, strong, readonly) UIButton *determineBtn;

@end

NS_ASSUME_NONNULL_END
