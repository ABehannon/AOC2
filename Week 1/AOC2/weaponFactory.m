//
//  NSObject+weaponFactory.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "weaponFactory.h"

@implementation weaponFactory

//Method will look to see which weapon is being created.
+(weaponBase *)createNewWeapon: (int)weaponType
{
    if (weaponType == SHOTGUN)
    {
        return [[shotgunWeapon alloc] init];
    } else if (weaponType == PISTOL)
    {
        return [[pistolWeapon alloc] init];
    } else if (weaponType == RIFLE)
    {
        return [[rifleWeapon alloc] init];
    } else return nil;
}

@end
	