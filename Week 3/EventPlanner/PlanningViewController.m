//
//  PlanningViewController.m
//  AOC2
//
//  Created by Alex Behannon on 1/24/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "PlanningViewController.h"

@interface PlanningViewController ()

@end

@implementation PlanningViewController

//Synthezising the custom delegate
@synthesize delegateCustom1;


//action checks tag, and based on what tag is found is the action to be called.
-(IBAction)onClick:(id)sender
{
    //if tag 1, dismiss the keyboard on click
    if ([sender tag] == 1) {
        [self dismissKB];
    }
    //if tag 2, store date info
    else if ([sender tag] == 2)
    {
        eventString = setEvent.text;
        NSLog(@"%@", eventString);
        [delegateCustom1 passEvent:[self modDate]];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    //if tag 3, simple cancel
    else if ([sender tag] == 3)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

//Action to dismiss the keyboard
-(IBAction)dismissKB
{
    [setEvent resignFirstResponder];
}

//update date info when scrolled
-(IBAction)onChange:(id)sender
{
    eventDateInfo = pickDate.date;
}

//Date modification 
-(NSString*)modDate
//takes date info and sents to event info
{    
    NSDateFormatter* dateFormatted = [[NSDateFormatter alloc] init];
    [dateFormatted setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
    eventString = [eventString stringByAppendingFormat:@"\n%@ \n\n", [dateFormatted stringFromDate:eventDateInfo]];
    return eventString;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
