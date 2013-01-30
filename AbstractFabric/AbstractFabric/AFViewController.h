//
//  AFViewController.h
//  AbstractFabric
//
//  Created by Dima Maleev on 1/26/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IPhoneFactory.h"

@interface AFViewController : UIViewController

-(IPhoneFactory *) getFactory;

@end
