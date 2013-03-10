//
//  FileDownloader.h
//  ProxyPattern
//
//  Created by Dima Maleev on 3/10/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileDownloader : NSObject

-(void) slowDownload;
-(void) fastDownload;

@end
