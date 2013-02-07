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
    
    IBOutlet UILabel * displayLabel;
    
}

//function calls for the controller
-(IBAction)shotgunFunction:(id)sender;
-(IBAction)pistolFunction:(id)sender;
-(IBAction)rifleFunction:(id)sender;

@end