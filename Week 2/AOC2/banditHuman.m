//
//  banditHuman.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "banditHuman.h"

@implementation banditHuman

@synthesize numberOfPKs, humanAge, humanWillpower;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setNumberOfPKs:10];
        [self setHumanAge:15];
        [self setHumanWillpower:10];
        [self setHumanName:@"RedHawk"];
    } return self;
}

-(void)calculateHumanInfo
{
    [self setHumanSkill:(humanAge + humanWillpower + numberOfPKs)];
}

@end
