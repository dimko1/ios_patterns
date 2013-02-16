//
//  StandardSubjectImplementation.h
//  ObserverPattern
//
//  Created by Dima Maleev on 2/16/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StandardSubject.h"

@interface StandardSubjectImplementation : NSObject <StandardSubject>
{
    @private NSString *_valueName;
    @private NSString *_newValue;
}

@property (nonatomic, strong) NSMutableSet *observerCollection;

-(void)changeValue:(NSString *)valueName andValue:(NSString *) newValue;

@end
