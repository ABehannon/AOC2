//
//  ViewController.m
//  EventPlanner
//
//  Created by Alex Behannon on 1/24/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"
#import "PlanningViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//edit or add to event
-(void)passEvent: (NSString*)eventsString
{
    if (stringEventCall != nil)
        
    {
        stringEventCall = [stringEventCall stringByAppendingString:eventsString];
    }
    
    else
        
    {
        stringEventCall = [NSString stringWithFormat:@"%@", eventsString];
    }
    
    eventsReadout.text = stringEventCall;
}

- (void)viewDidLoad
{
    //default readout of the events list
    eventsReadout.text = @"You have no events currently scheduled.";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//onClick call for main view controller
-(IBAction)onClick:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        //button to go to second view
        if(button.tag == 0)
        {
            PlanningViewController *showSecondView = [[PlanningViewController alloc] initWithNibName:@"PlanningViewController" bundle:nil];
            showSecondView.delegateCustom1 = self;
            //showSecondView.textField = self.textField;
            [self presentViewController:showSecondView animated:TRUE completion:nil];
        } else if(button.tag == 4)
        {
            self->eventsReadout.text = @"You have no events currently scheduled.";
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
