//
//  FIleDonwloaderProxy.h
//  ProxyPattern
//
//  Created by Dima Maleev on 3/10/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileDownloader.h"
@interface FileDownloaderProxy : NSObject
{
@private FileDownloader *_downloader;
}


@property (nonatomic) bool isPremiumUser;

-(void) slowDownload;
-(void) fastDownload;


@end
