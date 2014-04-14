//
//  MyTask.m
//  TestNSOperation
//
//  Created by Lion on 14-4-12.
//  Copyright (c) 2014年 Lion. All rights reserved.
//

#import "MyTask.h"

@implementation MyTask


- (void)main{
    NSLog(@"task %i run … ",_operationId);
    [NSThread sleepForTimeInterval:3];
    NSLog(@"task %i is finished. ",_operationId);
}

@end
