//
//  HighPricePhoneBuilder.m
//  BuilderPattern
//
//  Created by Dima Maleev on 1/28/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "HighPricePhoneBuilder.h"

@implementation HighPricePhoneBuilder

-(void) setOSVersion
{
    self._phone.osVersion = @"Android 4.1";
}
-(void) setName
{
    self._phone.name = @"High price phone!";
}
-(void) setCPUCodeName
{
    self._phone.cpuCodeName = @"Some shitty but expensive CPU";
}
-(void) setRAMSize
{
    self._phone.RAMsize = [[NSNumber alloc] initWithInt:1024];
}
-(void) setOSVersionCode
{
    self._phone.osVersionCode = [[NSNumber alloc] initWithFloat:4.1f];
}
-(void) setLauncher
{
    self._phone.launcher = @"Samsung Launcher";
}
@end
