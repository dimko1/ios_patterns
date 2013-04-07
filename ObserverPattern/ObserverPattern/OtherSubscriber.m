//
//  OtherSubscriber.m
//  ObserverPattern
//
//  Created by Dima Maleev on 2/16/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "OtherSubscriber.h"

@implementation OtherSubscriber

-(void) valueChanged:(NSString *)valueName newValue:(NSString *)newValue
{
    NSLog(@"And some another subscriber tells: Hmm, value %@ changed to %@", valueName, newValue);
}

@end
//и второй подписчик: