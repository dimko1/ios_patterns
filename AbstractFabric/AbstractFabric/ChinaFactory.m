//
//  ChinaFactory.m
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "ChinaFactory.h"

@implementation ChinaFactory

-(GenericIPad *) getIPad
{
    ChinaPad *pad = [[ChinaPad alloc] init];
    
    return pad;
}


-(GenericIPhone *) getIPhone
{
    ChinaPhone *phone  = [[ChinaPhone alloc] init];
    return phone;

}

@end
