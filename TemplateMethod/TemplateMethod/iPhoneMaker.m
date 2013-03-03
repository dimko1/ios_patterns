//
//  iPhoneMaker.m
//  TemplateMethod
//
//  Created by Dima Maleev on 3/3/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "iPhoneMaker.h"

@implementation iPhoneMaker

-(void) takeBox
{
    [self design];
    [super takeBox];
}


-(void) design
{
    NSLog(@"Putting label 'Designed in California'");
}
@end
