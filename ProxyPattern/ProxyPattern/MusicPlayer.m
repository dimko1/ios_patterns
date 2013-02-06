//
//  MusicPlayer.m
//  ProxyPattern
//
//  Created by Dima Maleev on 2/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "MusicPlayer.h"

@implementation MusicPlayer

-(void) playMusic
{
    [self.headPhones playBassSound];
    [self.headPhones playBassSound];
    [self.headPhones playSimpleSound];
    [self.headPhones playSimpleSound];
    
}

@end
