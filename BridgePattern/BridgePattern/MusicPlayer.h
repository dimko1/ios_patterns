//
//  MusicPlayer.h
//  ProxyPattern
//
//  Created by Dima Maleev on 2/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseHeadphones.h"

@interface MusicPlayer : NSObject

@property (nonatomic, strong) BaseHeadphones *headPhones;

-(void) playMusic;

@end
