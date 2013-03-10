//
//  FIleDonwloaderProxy.m
//  ProxyPattern
//
//  Created by Dima Maleev on 3/10/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FileDownloaderProxy.h"

@implementation FileDownloaderProxy


-(void) fastDownload
{
    if (!_isPremiumUser)
    {
        [self slowDownload];
        return;
    }
    
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    
    [self checkNetworkConnectivity];
    
    [_downloader fastDownload];
}

-(void) slowDownload
{
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    
    [self checkNetworkConnectivity];
    
    [_downloader slowDownload];
}

-(void) checkNetworkConnectivity
{
    NSLog(@"Checking network connectivity...");
}
@end
