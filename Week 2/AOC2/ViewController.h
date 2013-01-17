//
//  ViewController.h
//  AOC2
//
//  Created by Alex Behannon on 1/17/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dayzFactory.h"

@interface ViewController : UIViewController


//label calls
{
    
    IBOutlet UISegmentedControl * segmentedControl;
    IBOutlet UIButton * banditButton;
    IBOutlet UIButton * survivorButton;
    IBOutlet UIButton * zombieButton;
    IBOutlet UILabel * infoLabel;
    IBOutlet UIStepper * stepperButton;
    IBOutlet UILabel *stepperLabel;
    IBOutlet UIButton * calculateButton;
    
}

-(IBAction)onClick:(id)sender;
-(IBAction)onSegment:(id)sender;
-(IBAction)banditFunction:(id)sender;
-(IBAction)survivorFunction:(id)sender;
-(IBAction)zombieFunction:(id)sender;
-(IBAction)stepperFunction:(id)sender;
-(IBAction)calculateFunction:(id)sender;

@end