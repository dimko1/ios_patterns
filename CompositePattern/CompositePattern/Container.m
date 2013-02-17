//
//  Container.m
//  CompositePattern
//
//  Created by Dima Maleev on 2/17/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Container.h"


@implementation Container

-(NSMutableArray *) components
{
    if (_components == nil)
        _components = [[NSMutableArray alloc] init];
    
    return _components;
}

-(void) addComponent:(id<CompositeObjectProtocol>)aComponent
{
    [self.components addObject:aComponent];
}

-(NSString *) getData
{
    NSMutableString *valueToReturn = [[NSMutableString alloc] init];
    [valueToReturn appendString:@"<ContainerValues>"];
    
    for ( id<CompositeObjectProtocol> object in _components)
    {
        [valueToReturn appendString:[object getData]];
    }
    [valueToReturn appendString:@"</ContainerValues>"];
    
    return valueToReturn;

}

@end
