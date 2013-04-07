//
//  IPViewController.m
//  IteratorPattern
//
//  Created by Dima Maleev on 2/24/13.
//  Copyright (c) 2013 mDev. All rights reserved.
//

#import "IPViewController.h"
#import "ItemInShop.h"
#import "ShopWarehouse.h"
#import "GoodItemsEnumerator.h"
#import "BadItemsEnumerator.h"

@interface IPViewController ()

@end

NSArray *internallArrayCollection;
ShopWarehouse *shopWarehouse;

@implementation IPViewController
- (IBAction)btnNSEnumeratorTestClick:(id)sender {
    [self createCollection];
    
    NSEnumerator *enumerator = [internallArrayCollection objectEnumerator];
    NSString* element;
    
    while (element = [enumerator nextObject]) {
        NSLog(@"%@",element);
    }
    
}
- (IBAction)btnStandardForTestClick:(id)sender {
    [self createCollection];
    for (NSString *element in internallArrayCollection)
    {
        NSLog(@"%@",element);
    }
}
- (IBAction)btnBlockIteration:(id)sender {
    [self createCollection];
    
    
    //создание блока поиска Dima в массиве строчек
    void (^simpleDimaSearchBlock)(id, NSUInteger, BOOL*) =
    ^(id obj, NSUInteger idx, BOOL *stop){
        if([obj localizedCaseInsensitiveCompare:@"Dima"] == NSOrderedSame)
        {
            NSLog(@"Dima has been found!");
            *stop = YES;
        }
    };
    
    
    
    [internallArrayCollection enumerateObjectsUsingBlock:simpleDimaSearchBlock];
}
- (IBAction)btnCustomEnumerationTest:(id)sender {
    
    [self createTestItemsData];
    GoodItemsEnumerator *goodIterator = [shopWarehouse getGoodItemsEnumerator];
    BadItemsEnumerator *badIterator = [shopWarehouse getBrokenItemsEnumerator];
    
    ItemInShop *element;
    while (element = [goodIterator nextObject]) {
        NSLog(@"Good Item = %@", element.name);
    }
    
    while (element = [badIterator nextObject]) {
        NSLog(@"Bad Item = %@", element.name);
    }


}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void) createCollection
{
    internallArrayCollection = [[NSArray alloc] initWithObjects:@"Hello",@"My", @"Name", @"is", @"Dima", nil];
}

-(void) createTestItemsData
{
    shopWarehouse = [[ShopWarehouse alloc] init];
    
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item1" andQaulity:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item2" andQaulity:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item3" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item4" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item5" andQaulity:NO]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
