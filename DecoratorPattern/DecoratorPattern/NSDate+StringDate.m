//
//  NSDate+StringDate.m
//  DecoratorPattern
//
//  Created by Dima Maleev on 3/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "NSDate+StringDate.h"

@implementation NSDate (StringDate)

-(NSString *) convertDateToString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/dd/MM"];
    
    return [formatter stringFromDate:self];
}

@end
