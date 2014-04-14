//
//  NSString+RemoveNums.m
//  Test Category
//
//  Created by Lion on 14-4-12.
//  Copyright (c) 2014年 Lion. All rights reserved.
//

#import "NSString+RemoveNums.h"

@implementation NSString (RemoveNums)

-(NSString *)removeNumbersFromString:(NSString *)string
{
    NSString *trimmedString = nil;
    
    NSCharacterSet *numbersSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    
    trimmedString = [string stringByTrimmingCharactersInSet:numbersSet];
    
    return trimmedString;

}

@end
