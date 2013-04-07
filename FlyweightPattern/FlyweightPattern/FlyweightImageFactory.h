//
//  FlyweightImageFactory.h
//  FlyweightPattern
//
//  Created by Dima Maleev on 3/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlyweightImageFactory : NSObject

+(UIImage *) getImage:(NSString *)imageName;

@end
