//
//  SmartHousePart.h
//  MediatorPattern
//
//  Created by Dima Maleev on 2/12/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CentrallProcessor;

@interface SmartHousePart : NSObject
{
@private CentrallProcessor *_processor;
}

-(id) initWithCore:(CentrallProcessor *) processor;

-(void) numbersChanged;

@end
