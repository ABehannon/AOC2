//
//  SecondViewController.m
//  AOC2
//
//  Created by Alex Behannon on 2/21/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

//Synthezising the custom delegate
@synthesize customDelegate1;

//Left Swipe setup
-(void)viewDidAppear:(BOOL)animated
{
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeft:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftLabel addGestureRecognizer:swipeLeft];
}

//Swipe Left call
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
            event = setEvent.text;
            NSLog(@"%@", event);
            [customDelegate1 passEvent:[self editDate]];
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

//Calls actions based on tag/button clicked
-(IBAction)onClick:(id)sender
{
    //TAG 1 - Dismiss Keyboard
    if ([sender tag] == 1) {
        [self keyboardDismiss];
        
    }
}

//Keyboard dismissal. Called if hitting close keyboard button or tap out of the event text box
-(IBAction)keyboardDismiss
{
    [setEvent resignFirstResponder];
}

//Modification and settings for date
-(NSString*)editDate
{
    NSDateFormatter* dateFormatted = [[NSDateFormatter alloc] init];
    [dateFormatted setDateFormat:@"EEE, MMM d, yyyy hh:mm a"];
    event = [event stringByAppendingFormat:@"\n%@ \n\n", [dateFormatted stringFromDate:datePicker.date]];
    return event;
}

//Date is updated when scrolled through
-(IBAction)onChange:(id)sender
{
    dateInfo = datePicker.date;
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
    NSDate *minDate = [NSDate date];
    datePicker.minimumDate = minDate;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
