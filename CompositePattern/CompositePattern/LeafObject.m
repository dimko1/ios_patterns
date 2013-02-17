//
//  LeafObject.m
//  CompositePattern
//
//  Created by Dima Maleev on 2/17/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "LeafObject.h"

@implementation LeafObject

-(NSString *) getData
{
    return [[NSString alloc] initWithFormat:@"<%@/>",self.leafValue ];
}

-(void) addComponent:(id)aComponent
{
    NSLog(@"Can't add component. Sorry, man");
}

@end
