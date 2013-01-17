//
//  dayzFactory.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "dayzFactory.h"

@implementation dayzFactory

//method to find the base info
+(humanBase *)createNewHuman: (int)humanType
{
    if (humanType == BANDIT)
    {
        return [[banditHuman alloc] init];
    } else if (humanType == SURVIVOR)
    {
        return [[survivorHuman alloc] init];
    } else if (humanType == ZOMBIE)
    {
        return [[zombieHuman alloc] init];
    } else return nil;
}

@end
