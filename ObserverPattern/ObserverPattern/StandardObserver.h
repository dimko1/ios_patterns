//
//  StandardObserver.h
//  ObserverPattern
//
//  Created by Dima Maleev on 2/16/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StandardObserver <NSObject>

-(void) valueChanged:(NSString *)valueName newValue:(NSString *) newValue;

@end
