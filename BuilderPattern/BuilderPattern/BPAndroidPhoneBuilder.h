//
//  BPAndroidPhoneBuilder.h
//  BuilderPattern
//
//  Created by Dima Maleev on 1/28/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AndroidPhone.h"

@interface BPAndroidPhoneBuilder : NSObject

@property (nonatomic, strong) AndroidPhone* _phone;

-(void) setOSVersion;
-(void) setName;
-(void) setCPUCodeName;
-(void) setRAMSize;
-(void) setOSVersionCode;
-(void) setLauncher;

-(AndroidPhone *) getPhone;

@end
