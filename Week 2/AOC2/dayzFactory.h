//
//  dayzFactory.h
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "humanBase.h"
#import "banditHuman.h"
#import "survivorHuman.h"
#import "zombieHuman.h"

@interface dayzFactory : NSObject

+(humanBase *)createNewHuman: (int)humanType;

@end
