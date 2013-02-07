//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//


#import "weaponBase.h"

@implementation weaponBase

@synthesize weaponName, weaponClipCount, weaponReloadSpeed;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setWeaponName:@"DEFAULT"];
        [self setWeaponClipCount:1];
        [self setWeaponReloadSpeed:1];
        
    }
    return self;
}

-(void)calculateFireLength
{
    [self setWeaponFireLength:weaponClipCount * weaponReloadSpeed];
}

@end
