//
//  Caretaker.h
//  MementoPattern
//
//  Created by Dima Maleev on 3/11/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Originator.h"

@interface Caretaker : NSObject
{
@private Originator *_originator;
@private Memento *_memento;
}

-(void) changeValue;
-(void) saveState;
-(void) loadState;
@end
