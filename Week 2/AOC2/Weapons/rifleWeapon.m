//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "rifleWeapon.h"

@implementation rifleWeapon

@synthesize rifleFireRate, weaponReloadSpeed, weaponClipCount;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setWeaponName:@"M8A1"];
        [self setWeaponClipCount:5];
        [self setRifleFireRate:2.56];
        [self setWeaponReloadSpeed:2];
    } return self;
}

-(void)calculateFireLength
{
    [self setWeaponFireLength:((rifleFireRate + weaponReloadSpeed) * weaponClipCount)];
}

@end
