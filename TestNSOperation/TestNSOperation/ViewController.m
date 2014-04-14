//
//  ViewController.m
//  TestNSOperation
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
    
    NSOperationQueue *queue=[[NSOperationQueue alloc] init];
    
    int index=1;
    
    for (int i=0; i<10; i++) {
        MyTask *task=[[MyTask alloc] init];
        task.operationId=index++;
        
        [queue addOperation:task];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
