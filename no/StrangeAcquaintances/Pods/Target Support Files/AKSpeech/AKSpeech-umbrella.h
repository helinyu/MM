#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "AKASpeechDefine.h"
#import "AKSpeechMgr.h"
#import "AKSpeechModel.h"

FOUNDATION_EXPORT double AKSpeechVersionNumber;
FOUNDATION_EXPORT const unsigned char AKSpeechVersionString[];

