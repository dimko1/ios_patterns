//
//  BPAndroidPhoneBuilder.m
//  BuilderPattern
//
//  Created by Dima Maleev on 1/28/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "BPAndroidPhoneBuilder.h"

@implementation BPAndroidPhoneBuilder

-(id) init
{
    self = [super init];
    
    self._phone = [[AndroidPhone alloc] init];
    
    return self;
}

-(AndroidPhone *) getPhone
{
    return self._phone;
}

@end
