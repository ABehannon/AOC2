//
//  humanBase.h
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface humanBase : NSObject
{
    int humanEnum; //enum declaration for int
}

//enum values
typedef enum {
    BANDIT,
    SURVIVOR,
    ZOMBIE
} humanEnum;

@property NSString *humanName;
@property int humanAge;
@property int humanWillpower;
@property int humanSkill;

-(id)init;

-(void)calculateHumanInfo;

@end
