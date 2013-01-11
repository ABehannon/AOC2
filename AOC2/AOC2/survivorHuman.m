//
//  survivorHuman.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "survivorHuman.h"

@implementation survivorHuman

@synthesize numberOfHKs, humanAge, humanWillpower;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setNumberOfHKs:7];
        [self setHumanAge:13];
        [self setHumanWillpower:7];
        [self setHumanName:@"Tigah"];
    } return self;
}

-(void)calculateHumanInfo
{
    [self setHumanSkill:(humanAge + humanWillpower + numberOfHKs)];
}

@end