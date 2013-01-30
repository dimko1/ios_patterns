//
//  SingletonObject.h
//  SingletonPattern
//
//  Created by Dima Maleev on 1/30/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DEFINE_SHARED_INSTANCE_USING_BLOCK(block) \
static dispatch_once_t pred = 0; \
__strong static id _sharedObject = nil; \
dispatch_once(&pred, ^{ \
_sharedObject = block(); \
}); \
return _sharedObject; \

@interface SingletonObject : NSObject

@property (nonatomic, weak) NSString *tempProperty;

+(SingletonObject *) singleton;

@end
