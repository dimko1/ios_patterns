//
//  RavenAdapter.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "Raven.h"

@interface RavenAdapter : NSObject <BirdProtocol>
{
    @private Raven *_raven;
}

@property (nonatomic, strong) Raven *raven;


-(id) initWithRaven:(Raven*) adaptee;

@end
