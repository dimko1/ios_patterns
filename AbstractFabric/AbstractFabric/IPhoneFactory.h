//
//  IPhoneFactory.h
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GenericIPad.h"
#import "GenericIPhone.h"

@interface IPhoneFactory : NSObject

-(GenericIPhone *) getIPhone;
-(GenericIPad *) getIPad;

@end
