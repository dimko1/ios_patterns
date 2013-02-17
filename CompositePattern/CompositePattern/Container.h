//
//  Container.h
//  CompositePattern
//
//  Created by Dima Maleev on 2/17/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeObjectProtocol.h"

@interface Container : NSObject <CompositeObjectProtocol>

@property (nonatomic,strong) NSMutableArray *components;

@end
