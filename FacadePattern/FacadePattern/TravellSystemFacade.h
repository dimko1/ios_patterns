//
//  TravellSystemFacade.h
//  FacadePattern
//
//  Created by Dima Maleev on 2/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PathFinder.h"
#import "TravellEngine.h"
#import "TicketPrinitingSystem.h"
@interface TravellSystemFacade : NSObject

-(void) travellTo:(NSString *)location;

@end
