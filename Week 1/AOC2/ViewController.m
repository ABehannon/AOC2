//
//  ViewController.m
//  AOC2
//
//  Created by Alex Behannon on 1/10/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //bg color
    self.view.backgroundColor = [UIColor colorWithRed:0.88 green:0.88 blue:0.88 alpha:1];
    
    //title creation and location
    titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, 40.0f)];
    if (titleLabel != nil) {
        titleLabel.backgroundColor = [UIColor colorWithRed:0.122 green:0.122 blue:0.122 alpha:1];
        titleLabel.textColor =[UIColor whiteColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.text =@"DayZ Factory";
    }
    [self.view addSubview:titleLabel];
    
    //bandit info and label information
    banditHuman *banditinfo = (banditHuman*)[dayzFactory createNewHuman:BANDIT];
    if (banditinfo != nil)
    {
        [banditinfo setNumberOfPKs: 17];
        [banditinfo calculateHumanInfo];
        banditLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 40.0f, self.view.frame.size.width, 80.0f)];
        if (banditLabel != nil) {
            banditLabel.backgroundColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
            banditLabel.textColor =[UIColor blackColor];
            banditLabel.textAlignment = NSTextAlignmentCenter;
            banditLabel.text = [NSString stringWithFormat:@"User %@ has %i kills, has lasted %i days, and has an overall skill of %i", banditinfo.humanName, banditinfo.numberOfPKs, banditinfo.humanAge, banditinfo.humanSkill];
            banditLabel.numberOfLines = 3;
        }
    }
    [self.view addSubview:banditLabel];
    
    //survivor info and label information
    survivorHuman *survivorinfo = (survivorHuman*)[dayzFactory createNewHuman:SURVIVOR];
    if (survivorinfo != nil)
    {
        [survivorinfo setNumberOfHKs: 13];
        [survivorinfo calculateHumanInfo];
        survivorLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 120.0f, self.view.frame.size.width, 80.0f)];
        if (survivorLabel != nil) {
            survivorLabel.backgroundColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
            survivorLabel.textColor =[UIColor blackColor];
            survivorLabel.textAlignment = NSTextAlignmentCenter;
            survivorLabel.text = [NSString stringWithFormat:@"User %@ has outlasted %i bandits, living for at least %i days, and has an overall skill level of %i", survivorinfo.humanName, survivorinfo.numberOfHKs, survivorinfo.humanAge, survivorinfo.humanSkill];
            survivorLabel.numberOfLines = 3;
        }
    }
    [self.view addSubview:survivorLabel];
    
    //zombie info and label information
    zombieHuman *zombieinfo = (zombieHuman*)[dayzFactory createNewHuman:ZOMBIE];
    if (zombieinfo != nil)
    {
        [zombieinfo setNumberOfBrains: 13];
        [zombieinfo calculateHumanInfo];
        zombieLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 200.0f, self.view.frame.size.width, 80.0f)];
        if (zombieLabel != nil) {
            zombieLabel.backgroundColor = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1];
            zombieLabel.textColor =[UIColor blackColor];
            zombieLabel.textAlignment = NSTextAlignmentCenter;
            zombieLabel.text = [NSString stringWithFormat:@"The zombie once known as %@ has chomped on %i brains. Their skill is %i, as they were unable to stay alive.", zombieinfo.humanName, zombieinfo.numberOfBrains, zombieinfo.humanSkill];
            zombieLabel.numberOfLines = 3;
        }
    }
    [self.view addSubview:zombieLabel];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
