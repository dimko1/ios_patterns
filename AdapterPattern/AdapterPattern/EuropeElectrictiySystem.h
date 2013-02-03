//
//  EuropeElectrictiySystem.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EuropeElectrictiySystem: id<EuropeChargeable>

-(void) matchRoundHoles;

@end

@protocol EuropeChargeable
{

}