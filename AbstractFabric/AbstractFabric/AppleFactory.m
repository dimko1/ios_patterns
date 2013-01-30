//
//  AppleFactory.m
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "AppleFactory.h"
#import "AppleIPhone.h"
#import "AppleIPad.h"
@implementation AppleFactory

-(GenericIPhone *) getIPhone
{
    AppleIPhone *iphone = [[AppleIPhone alloc] init];
    return iphone;
}

-(GenericIPad *) getIPad
{
    AppleIPad *ipad = [[AppleIPad alloc] init];
    return ipad;
}
@end
