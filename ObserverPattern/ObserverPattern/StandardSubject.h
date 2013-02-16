//
//  StandardSubject.h
//  ObserverPattern
//
//  Created by Dima Maleev on 2/16/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardObserver.h"

@protocol StandardSubject <NSObject>

-(void) addObserver:(id<StandardObserver>) observer;
-(void) removeObserver:(id<StandardObserver>) observer;
-(void) notifyObjects;

@end
