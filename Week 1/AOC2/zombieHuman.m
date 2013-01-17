//
//  zombieHuman.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "zombieHuman.h"

@implementation zombieHuman

@synthesize numberOfBrains, humanAge, humanWillpower;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setNumberOfBrains:13];
        [self setHumanAge:0];
        [self setHumanWillpower:0];
        [self setHumanName:@"Derp"];
    } return self;
}

-(void)calculateHumanInfo
{
    [self setHumanSkill:0];
}

@end
