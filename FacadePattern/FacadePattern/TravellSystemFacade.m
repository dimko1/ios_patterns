//
//  TravellSystemFacade.m
//  FacadePattern
//
//  Created by Dima Maleev on 2/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "TravellSystemFacade.h"

@implementation TravellSystemFacade

-(void) travellTo:(NSString *)location
{

    PathFinder *pf = [[PathFinder alloc] init];
    TravellEngine *te = [[TravellEngine alloc] init];
    TicketPrinitingSystem *tp = [[TicketPrinitingSystem alloc] init];
    
    
    [pf findCurrentLocation];
    [pf findLocationToTravel:location];
    [pf makeARoute];
    
    [te findTransport];
    [te orderTransport];
    [tp createTicket];
    [tp printingTicket];
    [te travel];
}

@end
