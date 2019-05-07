//
//  MMColor.h
//  ModifyMakeup
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/5/7 15:55 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//



#ifndef MMColor_h
#define MMColor_h

#import "UIColor+MMAdd.h"

#define HexColor(hexString) [UIColor colorWithHexString:hexString]
#define HexColorWithAlpha(hexString, alpha) [HexColor(hexString) colorWithAlphaComponent:alpha]

#define kRGB_MAIN HexColor(@"ff7b48")
#define kRGB_BLUE HexColor(@"41A1FF")
#define kRGB_RED  HexColor(@"eb2c1b")
#define kRGB_DARK_RED HexColor(@"FC5959")
#define kRGB_GREEN HexColor(@"41C88A")
#define kRGB_MAIN_BG HexColor(@"FDEFED")

#define kRGB_EB HexColor(@"ebebeb")
#define kRGB_9B HexColor(@"9B9B9B")
#define kRGB_11 HexColor(@"111111")
#define kRGB_71 HexColor(@"717171")
#define kRGB_81 HexColor(@"818181")
#define kRGB_53 HexColor(@"535353")
#define kRGB_33 HexColor(@"333333")
#define kRGB_D8 HexColor(@"D8D8D8")
#define kRGB_DD HexColor(@"DDDDDD")
#define kRGB_CC HexColor(@"CCCCCC")
#define kRGB_F5 HexColor(@"F5F5F5")
#define kRGB_66 HexColor(@"666666")
#define kRGB_4A HexColor(@"4a4a4a")
#define kRGB_00 HexColor(@"000000")
#define kRGB_FF HexColor(@"ffffff")
#define kRGB_99 HexColor(@"999999")
#define kRGB_A8 HexColor(@"a8a8a8")
#define kRGB_A9 HexColor(@"a9a9a9")
#define kRGB_55 HexColor(@"555555")
#define kRGB_63 HexColor(@"636363")
#define kRGB_F8 HexColor(@"F8F8F8")
#define kRGB_C3 HexColor(@"C3C3C3")
#define kRGB_E4 HexColor(@"E4E4E4")
#define kRGB_EF HexColor(@"EFEFEF")

#endif /* MMColor_h */
