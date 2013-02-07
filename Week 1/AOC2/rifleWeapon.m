//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "rifleWeapon.h"

@implementation rifleWeapon

@synthesize rifleFireRate, weaponName, weaponClipCount, weaponReloadSpeed, rifleSpeedMags;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setWeaponName:@"M8A1"];
        [self setWeaponClipCount:5];
        [self setRifleFireRate:2.56];
        [self setWeaponReloadSpeed:2];
        [self setRifleSpeedMags:0];
    } return self;
}

-(void)calculateFireLength
{
    [self setWeaponFireLength:(((rifleFireRate + weaponReloadSpeed) * weaponClipCount) +
                               //ABOVE: reg add, BELOW: speed mags add
                               ((rifleFireRate + weaponReloadSpeed)* .6) * rifleSpeedMags)];
}

@end
