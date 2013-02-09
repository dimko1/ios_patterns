//
//  PathFinder.h
//  FacadePattern
//
//  Created by Dima Maleev on 2/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathFinder : NSObject

-(void) findCurrentLocation;
-(void) findLocationToTravel:(NSString *) location;
-(void) makeARoute;


@end
