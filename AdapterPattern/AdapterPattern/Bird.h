//
//  Bird.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BirdProtocol
-(void) sing;
-(void) fly;
@end


@interface Bird : NSObject <BirdProtocol>

@end
