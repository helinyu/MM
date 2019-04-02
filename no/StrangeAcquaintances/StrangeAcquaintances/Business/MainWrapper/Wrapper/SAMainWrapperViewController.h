//
//  SAMainWrapperViewController.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/3/24 22:22 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import <UIKit/UIKit.h>
#import "SAMainWrapperProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@BeeHiveService(SAMainWrapperProtocol,BHViewController)
@interface SAMainWrapperViewController : UIViewController <SAMainWrapperProtocol>

@end

NS_ASSUME_NONNULL_END
