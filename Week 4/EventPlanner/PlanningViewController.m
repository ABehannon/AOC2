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

//Swipe left label setup
-(void)viewDidAppear:(BOOL)animated
{
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftLabel addGestureRecognizer:swipeLeft];
}

//Swipe onLeft call
-(void)onLeft:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if([setEvent.text length] == 0)
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"Please enter a description."
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        
        else if([setEvent.text length] > 0)
        {
            eventString = setEvent.text;
            NSLog(@"%@", eventString);
            [delegateCustom1 passEvent:[self modDate]];
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

//action checks tag, and based on what tag is found is the action to be called.
-(IBAction)onClick:(id)sender
{
    //if tag 1, dismiss the keyboard on click
    if ([sender tag] == 1) {
        [self dismissKB];
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
    eventString = [eventString stringByAppendingFormat:@"\n%@ \n\n", [dateFormatted stringFromDate:pickDate.date]];
    return eventString;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        
    }
    return self;
}

- (void)viewDidLoad
{
    NSDate *minDate = [NSDate date];
    pickDate.minimumDate = minDate;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
