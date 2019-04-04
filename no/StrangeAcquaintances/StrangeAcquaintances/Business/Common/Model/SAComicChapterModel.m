//
//  SAComicChapterModel.m
//  StrangeAcquaintances
//
//  独学而无友 则孤陋寡闻
//
//  Created by helinyu on 2019/4/3 11:42 .
//  Copyright © 2019 Aka. All rights reserved.
//  xcode 10.14 .
//
    

#import "SAComicChapterModel.h"
#import <YYModel/YYModel.h>

@implementation SAComicChapterModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
             @"comicName" : @"comic_name",
             @"comicId" : @"comic_id",
             @"chapterId" : @"chapter_id",
             @"chapterName" : @"chapter_name",
             @"createDate" : @"create_date",
             @"chapterTopicId" : @"chapter_topic_id",
             @"price" : @"price",
             @"startNum" : @"start_num",
             @"endNum" : @"end_num",
             @"chapterDomain" : @"chapter_domain",
             @"sourceUrl" : @"source_url",
             @"rule" : @"rule",
             @"webview" : @"webview",
             @"chapterImage" :@"chapter_image",
             @"selected" : @"selected",
             @"isChose" : @"isChose",
             @"downloadStatus" : @"downloadStatus",
             @"downloadCount" : @"downloadCount",
             @"isCurrentReading" : @"isCurrentReading",
             @"isNeedShowTimeDot" : @"isNeedShowTimeDot",
             @"memory" : @"memory",
             @"downloadTime" : @"downloadTime",
             @"urls" : @"urls",
             @"selectStatus" : @"selectStatus",
             @"readProgress" : @"readProgress",
             @"isH5" : @"isH5",
             @"isPurchased" : @"purchased",
             @"chapterIndex" : @"chapter_index",
             @"chapterTitle" : @"chapter_title",
             };
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    [super yy_modelEncodeWithCoder:aCoder];

    [aCoder encodeObject:self.comicId forKey:@"comic_id"];
    [aCoder encodeObject:self.comicName forKey:@"comic_name"];
    [aCoder encodeObject:self.chapterId forKey:@"chapter_id"];
    [aCoder encodeInteger:self.chapterTopicId forKey:@"chapter_topic_id"];
    [aCoder encodeObject:self.chapterImage forKey:@"chapter_image"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    self = [super yy_modelInitWithCoder:aDecoder];
    if (self) {
        self.comicId = [aDecoder decodeObjectForKey:@"comic_id"];
        self.comicName = [aDecoder decodeObjectForKey:@"comic_name"];
        self.chapterId = [aDecoder decodeObjectForKey:@"chapter_id"];
        self.chapterTopicId = [aDecoder decodeIntegerForKey:@"chapter_topic_id"];
        self.chapterName = [aDecoder decodeObjectForKey:@"chapter_image"];
    }
    return self;
}

- (NSString *)downloadStatusDescription {
    switch (self.downloadStatus) {
        case SAComicDownloadStatusNone:
            return NSLocalizedString(@"NotCache", @"未缓存") ;
        case SAComicDownloadStatusWaiting:
            return NSLocalizedString(@"WaitingForCache", @"等待缓存");
        case SAComicDownloadStatusPaused:
            return NSLocalizedString(@"CachePause", @"暂停缓存");
        case SAComicDownloadStatusDownloading:
            return NSLocalizedString(@"CacheIng", @"正在缓存");
        case SAComicDownloadStatusDownloadCompleted:
            return NSLocalizedString(@"CacheComplete", @"缓存完成");
        case SAComicDownloadStatusDownloadFailed:
            return NSLocalizedString(@"CachePause", @"暂停缓存");
        default:
            return @"";
            break;
    }
}

#warning --  这个方法不应该出现在这里，还是图片的底层库的？？
- (SAComicReaderImageQuality)imageQuality {
    NSString *url = self.urls.firstObject;
//    if (url.length > 0) {
//        __block ComicReaderImageQuality imageQuality = ComicReaderImageQualityMiddle;
//        [[ComicChapterImageManager defaultManager].imageQualityIdetifier enumerateKeysAndObjectsUsingBlock:^(NSNumber *key, NSString *obj, BOOL * _Nonnull stop) {
//            if ([url rangeOfString:obj].length > 0) {
//                *stop = YES;
//                imageQuality = (ComicReaderImageQuality)[key integerValue];
//            }
//        }];
//        return imageQuality;
//    }
    return NSNotFound;
}

- (void)resetToInitState {
    _isChose = NO;
    _selected = NO;
    _downloadCount = 0;
    _memory = 0.0;
    _downloadTime = 0;
    _downloadStatus = SAComicDownloadStatusNone;
}

@end
