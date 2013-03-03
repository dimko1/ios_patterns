//
//  AnyPhoneTemplate.h
//  TemplateMethod
//
//  Created by Dima Maleev on 3/3/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnyPhoneTemplate : NSObject
//it will be template method
-(void) makePhone;
-(void) takeBox;
-(void) takeMicrophone;
-(void) takeCamera;
-(void) assemble;
@end
