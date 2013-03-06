//
//  CPViewController.m
//  CommandPattern
//
//  Created by Dima Maleev on 3/6/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "CPViewController.h"
#import "FirstCommand.h"
#import "SecondCommand.h"
#import "CommandExecutor.h"


@interface CPViewController ()

@end

@implementation CPViewController
- (IBAction)commandCreationTest:(id)sender {
    
    CommandExecutor *commandE = [[CommandExecutor alloc] init];
    
    BaseCommand *cmdF = [[FirstCommand alloc] initWithArguments:@"This is a test string"];
    BaseCommand *cmdS = [[SecondCommand alloc] initWithArgs:3];
    
    [commandE addCommand:cmdF];
    [commandE addCommand:cmdS];
    
    [commandE executeCommands];
    [commandE undoAll];
}

- (IBAction)nsinvocationCallTest:(id)sender {
    
    NSMethodSignature *signature = [self methodSignatureForSelector:@selector(methodInMainController:andString:)];
    NSInvocation *invocationToPass =[NSInvocation invocationWithMethodSignature:signature];
    [invocationToPass setTarget:self];
    [invocationToPass setSelector:@selector(methodInMainController:andString:)];
    
    int intArgument = 3;
    NSString *stringArgument = @"This is a string argument";
    
    [invocationToPass setArgument:&intArgument atIndex:2];
    [invocationToPass setArgument:&stringArgument atIndex:3];
    
    CommandExecutor *executor = [[CommandExecutor alloc] init];
    [executor setSpecificCommand:invocationToPass];
    [executor executeSpecificCommand];
}


-(void) methodInMainController:(int) aFirstArgument andString:(NSString *)aStringArgument
{
    NSLog(@"Method called with first argument = %i and second argument = %@", aFirstArgument, aStringArgument);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
