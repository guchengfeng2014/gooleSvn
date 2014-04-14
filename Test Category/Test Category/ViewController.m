//
//  ViewController.m
//  Test Category
//
//  Created by Lion on 14-4-12.
//  Copyright (c) 2014年 Lion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *stringWithNums = @"ABC 123";
    
    NSLog(@"stringWithNums         --> %@",stringWithNums);
    
    stringWithNums = [stringWithNums removeNumbersFromString:stringWithNums];
    
    NSLog(@"trimmed stringWithNums --> %@",stringWithNums);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
