//
//  NSObject+weaponFactory.h
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "weaponBase.h"
#import "shotgunWeapon.h"
#import "pistolWeapon.h"
#import "rifleWeapon.h"

@interface weaponFactory : NSObject

+(weaponBase *)createNewWeapon: (int)weaponType;

@end
