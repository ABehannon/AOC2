//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//


//SHOTGUN WEAPON BELOW

#import "shotgunWeapon.h"

@implementation shotgunWeapon

@synthesize shotgunFireRate, weaponReloadSpeed, weaponClipCount, shotgunShellsPerClip;

-(id)init
{
    self = [super init];
    if (self != nil);
    {
        [self setWeaponName:@"KSG"];
        [self setWeaponClipCount:3];
        [self setShotgunFireRate:11.97];
        [self setWeaponReloadSpeed:3];
        [self setShotgunShellsPerClip:6];
    } return self;
}

-(void)calculateFireLength
{
    
    [self setWeaponFireLength:((shotgunFireRate + (weaponReloadSpeed * shotgunShellsPerClip)) * weaponClipCount)];
}

@end
