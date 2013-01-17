//
//  humanBase.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "humanBase.h"

@implementation humanBase

@synthesize humanName, humanAge, humanSkill, humanWillpower;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setHumanName:nil];
        [self setHumanAge:0];
        [self setHumanWillpower:0];
        
    }
    return self;
}

-(void)calculateHumanInfo
{
    [self setHumanSkill:humanWillpower + humanAge];
}
@end
