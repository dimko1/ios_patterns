//
//  Person.m
//  PrototypePattern
//
//  Created by Dima Maleev on 1/30/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id) copyWithZone:(NSZone *)zone
{
    Person *copy = [[self class] allocWithZone:zone];
    copy.name = self.name;
    copy.age = self.age;
    copy.surname = self.surname;
    return copy;
}

@end
