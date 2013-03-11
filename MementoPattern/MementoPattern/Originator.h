//
//  Originator.h
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"
#import "Memento.h"

@interface Originator : NSObject
{
@private OriginatorState *_localState;
}

-(void) changeValues;
-(OriginatorState *) getState;
-(void) setState:(OriginatorState *)oldState;
@end
