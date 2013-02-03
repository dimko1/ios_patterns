//
//  EuropeanNotebookCharger.h
//  AdapterPattern
//
//  Created by Dima Maleev on 2/1/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "Charger.h"

@protocol EuropeanNotebookChargerDelegate
-(void) chargetNotebookRoundHoles:(Charger *)charger;
@end


@interface EuropeanNotebookCharger : Charger <EuropeanNotebookChargerDelegate>
{
@private id<EuropeanNotebookChargerDelegate> _delegate;
}

@property (nonatomic, strong) id<EuropeanNotebookChargerDelegate> delegate;
@end
