//
//  CompositeObjectProtocol.h
//  CompositePattern
//
//  Created by Dima Maleev on 2/17/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CompositeObjectProtocol <NSObject>

-(NSString *) getData;
-(void) addComponent:(id<CompositeObjectProtocol>)aComponent;

@end
