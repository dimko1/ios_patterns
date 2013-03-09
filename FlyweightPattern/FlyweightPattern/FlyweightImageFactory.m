//
//  FlyweightImageFactory.m
//  FlyweightPattern
//
//  Created by Dima Maleev on 3/9/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "FlyweightImageFactory.h"

@implementation FlyweightImageFactory

NSMutableDictionary *_imageDictionary;

+(UIImage *)getImage:(NSString *)imageName
{
    if (!_imageDictionary)
        _imageDictionary = [[NSMutableDictionary alloc] init];
    
    if (![_imageDictionary objectForKey:imageName])
    {
        [_imageDictionary setObject:[UIImage imageNamed:[[NSString alloc] initWithFormat:@"%@.jpeg",imageName]] forKey:imageName];
        NSLog(@"Loading image of the %@", imageName);
    }
    
    return [_imageDictionary objectForKey:imageName];
}

@end
