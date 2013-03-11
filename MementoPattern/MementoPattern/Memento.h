//
//  Memento.h
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OriginatorState.h"

@interface Memento : NSObject
{
@private OriginatorState *_localState;
}

-(id) initWithState:(OriginatorState *)state;
-(OriginatorState*) getState;
@end
