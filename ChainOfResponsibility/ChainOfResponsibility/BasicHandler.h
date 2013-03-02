//
//  BasicHandler.h
//  ChainOfResponsibility
//
//  Created by Dima Maleev on 3/2/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicItem.h"

@interface BasicHandler : NSObject
{
@private BasicHandler *_nextHandler;
}

@property (nonatomic, strong) BasicHandler *nextHandler;
-(void) handleItem:(BasicItem *) item;
@end
