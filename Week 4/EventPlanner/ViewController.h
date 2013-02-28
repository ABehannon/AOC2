//
//  ViewController.h
//  EventPlanner
//
//  Created by Alex Behannon on 2/21/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController

{
    
    NSString *callEvent;
    IBOutlet UITextView *readout;
    
    IBOutlet UILabel *swipeRightLabel;
    UISwipeGestureRecognizer *swipeRight;
}

@property (nonatomic, strong) IBOutlet UITextView *events;

-(IBAction)saveButton:(id)sender;

@end
