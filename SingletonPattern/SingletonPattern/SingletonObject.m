//
//  SingletonObject.m
//  SingletonPattern
//
//  Created by Dima Maleev on 1/30/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "SingletonObject.h"

@implementation SingletonObject

/*+(SingletonObject *) singleton
{
    static SingletonObject *singletonObject = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonObject = [[self alloc] init];
    });
    
    return singletonObject;
}*/

//no GDC Method
//+(SingletonObject *) singleton
//{
//    static SingletonObject *singletonObject = nil;
//    @synchronized(self)
//    {
//            if (singletonObject == nil )
//            {
//                singletonObject = [[self alloc] init];
//            }
//    }
//
//    return singletonObject;
//}

//version using macross
+(SingletonObject *) singleton
{
    DEFINE_SHARED_INSTANCE_USING_BLOCK(^{
        return [[self alloc] init];
    });
}

@end
