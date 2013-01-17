//
//  ViewController.m
//  AOC2
//
//  Created by Alex Behannon on 1/17/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Bandit button for factory
-(IBAction)banditFunction:(id)sender
{
    int stepperAmount = stepperButton.value;
    infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the bandit's skill is ready to be calculated.", stepperAmount];
    
    //enable and disable buttons
    banditButton.enabled = false;
    banditButton.alpha = 0.4;
    
    survivorButton.enabled = true;
    survivorButton.alpha = 1;
    
    zombieButton.enabled = true;
    zombieButton.alpha = 1;
    
    calculateButton.enabled = true;
    calculateButton.alpha = 1;
    
}

//Survivor button for factory
-(IBAction)survivorFunction:(id)sender
{
    int stepperAmount = stepperButton.value;
    infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the survivor's skill is ready to be calculated.", stepperAmount];
    
    //enable and disable buttons
    banditButton.enabled = true;
    banditButton.alpha = 1;
    
    survivorButton.enabled = false;
    survivorButton.alpha = 0.4;
    
    zombieButton.enabled = true;
    zombieButton.alpha = 1;
    
    calculateButton.enabled = true;
    calculateButton.alpha = 1;
    
}

//Zombie button for factory
-(IBAction)zombieFunction:(id)sender
{
    int stepperAmount = stepperButton.value;
    infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the zombie's skill is ready to be calculated.", stepperAmount];
    
    //enable and disable buttons
    banditButton.enabled = true;
    banditButton.alpha = 1;
    
    survivorButton.enabled = true;
    survivorButton.alpha = 1;
    
    zombieButton.enabled = false;
    zombieButton.alpha = 0.4;
    
    calculateButton.enabled = true;
    calculateButton.alpha = 1;
    
}

//Stepper function for factory
-(IBAction)stepperFunction:(id)sender
{
    int stepperAmount = stepperButton.value;
    if (banditButton.enabled == false)
    {
    infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the bandit's skill is ready to be calculated.", stepperAmount];
    } else if (survivorButton.enabled == false)
    {
        infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the survivor's skill is ready to be calculated.", stepperAmount];
    } else if (zombieButton.enabled == false)
    {
        infoLabel.text = [NSString stringWithFormat:@"The stepper is set to %d, and the zombie's skill is ready to be calculated.", stepperAmount];
    }
    
    stepperLabel.text = [NSString stringWithFormat:@"%d", stepperAmount];

}

//Second View Action Button
-(IBAction)onClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentModalViewController:viewController animated:TRUE];
    }
}

//calculate button
-(IBAction)calculateFunction:(id)sender
{
    int stepperAmount = stepperButton.value;
    if (banditButton.enabled == false)
    {
        banditHuman *banditinfo = (banditHuman*)[dayzFactory createNewHuman:BANDIT];
        if (banditinfo != nil)
        {
            [banditinfo setNumberOfPKs: 17];
            [banditinfo calculateHumanInfo];
            int skillAmount = banditinfo.humanSkill * stepperAmount;
            infoLabel.text = [NSString stringWithFormat:@"The total skill of the bandit is %d.", skillAmount];
        }
        
    } else if (survivorButton.enabled == false)
    {
        survivorHuman *survivorinfo = (survivorHuman*)[dayzFactory createNewHuman:SURVIVOR];
        if (survivorinfo != nil)
        {
            [survivorinfo setNumberOfHKs: 12];
            [survivorinfo calculateHumanInfo];
            int skillAmount = survivorinfo.humanSkill * stepperAmount;
            infoLabel.text = [NSString stringWithFormat:@"The total skill of the survivor is %d.", skillAmount];
        }
    } else if (zombieButton.enabled == false)
    {
        zombieHuman *zombieinfo = (zombieHuman*)[dayzFactory createNewHuman:ZOMBIE];
        if (zombieinfo != nil)
        {
            [zombieinfo setNumberOfBrains: 2];
            [zombieinfo calculateHumanInfo];
            int skillAmount = zombieinfo.humanSkill * stepperAmount;
            infoLabel.text = [NSString stringWithFormat:@"The total skill of the zombie is %d.", skillAmount];
        }
    }
}

//Segmented Color Switcher

-(IBAction)onSegment:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedSegment = segControl.selectedSegmentIndex;
        switch (selectedSegment)
        {
            case 0:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
                
            case 1:
                self.view.backgroundColor = [UIColor grayColor];
                break;
                
            case 2:
                self.view.backgroundColor = [UIColor blackColor];
                break;
                
            default:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
        }
    }
}

@end
