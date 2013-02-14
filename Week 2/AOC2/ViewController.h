//
//  ViewController.h
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weaponFactory.h"

@interface ViewController : UIViewController

//outlet calls
{
    IBOutlet UISegmentedControl * segmentedControl;
    IBOutlet UIButton * pistolButton;
    IBOutlet UIButton * shotgunButton;
    IBOutlet UIButton * rifleButton;
    IBOutlet UIButton * calculateButton;
    IBOutlet UIStepper * stepperButton;
    IBOutlet UITextField * infoTextField;
    IBOutlet UILabel *stepperLabel;
    IBOutlet UILabel *BGLabel;
    
}

//function calls for the controller
-(IBAction)onClick:(id)sender;
-(IBAction)onSegment:(id)sender;
-(IBAction)shotgunFunction:(id)sender;
-(IBAction)pistolFunction:(id)sender;
-(IBAction)rifleFunction:(id)sender;
-(IBAction)stepperFunction:(id)sender;
-(IBAction)calculateFunction:(id)sender;

@property int stepperCount;

@end