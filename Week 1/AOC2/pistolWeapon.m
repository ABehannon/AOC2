//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "pistolWeapon.h"

@implementation pistolWeapon

@synthesize pistolFireRate, weaponName, weaponClipCount, weaponReloadSpeed, pistolExtendedMag;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setWeaponName:@"KAP-40"];
        [self setWeaponClipCount:4];
        [self setPistolFireRate:1.2];
        [self setWeaponReloadSpeed:3];
        [self setPistolExtendedMag:FALSE];
    } return self;
}

-(void)calculateFireLength
{
    if (pistolExtendedMag == FALSE) {
    [self setWeaponFireLength:((pistolFireRate + weaponReloadSpeed) * weaponClipCount)];
    } else
        if (pistolExtendedMag == TRUE) {
            [self setWeaponFireLength:(((pistolFireRate + weaponReloadSpeed)* .75) * weaponClipCount)];
        }
}

@end
