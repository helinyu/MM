//
//  SAComicChapterModel.h
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 11:42 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger,SAComicReaderImageQuality) {
    SAComicReaderImageQualityLow = 0, //普通
    SAComicReaderImageQualityMiddle,  //高清
    SAComicReaderImageQualityHigh,    //超清
};

typedef NS_ENUM(NSInteger,SAComicDownloadStatus) {
    SAComicDownloadStatusNone = 0,
    SAComicDownloadStatusWaiting,
    SAComicDownloadStatusDownloading,
    SAComicDownloadStatusPaused,
    SAComicDownloadStatusDownloadCompleted,
    SAComicDownloadStatusDownloadFailed
};

typedef NS_ENUM(NSUInteger, SAMutiDownSelectStatus) { //ComicCacheChapterviewcontroller 页面
    SAMutiDownSelectStatusUnselect,
    SAMutiDownSelectStatusSelected,
    SAMutiDownSelectStatusDownloadDone,
};

NS_ASSUME_NONNULL_BEGIN

@interface SAComicChapterModel : NSObject

@property (nonatomic, assign) BOOL hasDownLoadedUpdateFinished;
@property (nonatomic, copy)NSString *comicName;
@property (nonatomic, copy)NSString *comicId;
@property (nonatomic, copy)NSString *chapterId;
@property (nonatomic, copy)NSString *chapterName;
@property (nonatomic, copy)NSString *createDate;
@property (nonatomic, assign)NSInteger chapterTopicId;

@property (nonatomic, assign)NSInteger price;
@property (nonatomic, assign)NSInteger startNum;
@property (nonatomic, assign)NSInteger endNum;
@property (nonatomic, copy)NSString *chapterDomain;
@property (nonatomic, copy)NSString *sourceUrl;
@property (nonatomic, copy)NSString *rule;
@property (nonatomic, copy)NSString *webview;
@property (nonatomic, copy)NSDictionary *chapterImage;

@property (nonatomic, assign) BOOL selected;
@property (nonatomic, assign) BOOL isChose;
@property (nonatomic, assign) SAComicDownloadStatus downloadStatus;
@property (nonatomic, copy) NSString *downloadStatusDescription;
@property (nonatomic, assign) NSInteger downloadCount;
@property (nonatomic, assign) BOOL isCurrentReading;
@property (nonatomic, assign) BOOL isNeedShowTimeDot;

@property (nonatomic, assign)CGFloat memory;
@property (nonatomic, assign)NSTimeInterval downloadTime;

@property (nonatomic, copy)NSArray *urls;
@property (nonatomic, assign) enum SAMutiDownSelectStatus selectStatus;
@property (nonatomic, assign) CGFloat readProgress;
@property (nonatomic, readonly) BOOL isH5;

@property (nonatomic, assign) BOOL isPurchased;

@property (nonatomic, copy) NSString *chapterIndex;
@property (nonatomic, copy) NSString *chapterTitle;

@property (nonatomic, assign) SAComicReaderImageQuality imageQuality;

- (void)resetToInitState;

- (BOOL)canReadWithPurchasedChapters:(NSArray *)purchasedChapters;

- (NSInteger)totalCount;
- (BOOL)isExtra; // 是否是番外章节
- (NSString *)storedPath; // 缓存路径

@end

NS_ASSUME_NONNULL_END
