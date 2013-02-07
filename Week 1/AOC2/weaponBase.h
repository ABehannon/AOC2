//
//  NSObject+weaponFactory.h
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weaponBase : NSObject
{
    int weaponEnum; //enum declaration for int
}

//enum values for above declaration
typedef enum {
    SHOTGUN,
    PISTOL,
    RIFLE
} weaponEnum;

@property NSString *weaponName;
@property int weaponClipCount;
@property int weaponReloadSpeed;
@property int weaponFireLength;

-(id)init;

-(void)calculateFireLength;

@end
