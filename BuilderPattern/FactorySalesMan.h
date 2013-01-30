//
//  FactorySalesMan.h
//  BuilderPattern
//
//  Created by Dima Maleev on 1/28/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPAndroidPhoneBuilder.h"
#import "AndroidPhone.h"

@interface FactorySalesMan : NSObject

@property (nonatomic, strong) BPAndroidPhoneBuilder *_builder;

-(void) setBulider:(BPAndroidPhoneBuilder *)aBuilder;
-(AndroidPhone *) getPhone;
-(void) constructPhone;

@end
