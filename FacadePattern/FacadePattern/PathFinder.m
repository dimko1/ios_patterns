//
//  PathFinder.m
//  FacadePattern
//
//  Created by Dima Maleev on 2/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "PathFinder.h"

@implementation PathFinder

-(void) findCurrentLocation
{
    NSLog(@"Finding your location. Hmmm, here you are!");
}

-(void) findLocationToTravel:(NSString *)location
{
    NSLog(@"So you wanna travell to %@", location);
}

-(void) makeARoute
{
    NSLog(@"Okay, to travell to this location we are using google maps....");
    //looking for path in google maps.
}

@end
