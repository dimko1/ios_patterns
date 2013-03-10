//
//  FileDownloader.m
//  ProxyPattern
//
//  Created by Dima Maleev on 3/10/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FileDownloader.h"

@implementation FileDownloader

-(id) init
{
    self = [super init];
    NSLog(@"Downloader created");
    return self;
}


-(void) slowDownload
{
    NSLog(@"Sloooooowly downloading...");
}

-(void) fastDownload
{
    NSLog(@"Shuuuuuh, already downloaded...");
}
@end
