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


//Swipe right label setup
-(void)viewDidAppear:(BOOL)animated
{
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:swipeRight];
}

//Swipe onRight call
-(void)onRight:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        PlanningViewController *showSecondView = [[PlanningViewController alloc] initWithNibName:@"PlanningViewController" bundle:nil];
        showSecondView.delegateCustom1 = self;
        //showSecondView.textField = self.textField;
        [self presentViewController:showSecondView animated:TRUE completion:nil];
    }
}

//Save Events
-(IBAction)saveButton:(id)sender
{
    NSUserDefaults *defaultInfo = [NSUserDefaults standardUserDefaults];
    if (defaultInfo !=nil)
    {
        NSString *eventsTextString = self.eventsReadout.text;
        
        [defaultInfo setObject:eventsTextString forKey:@"Events"];
        
        [defaultInfo synchronize];
        NSLog(@"Saved");
        
    }
}

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
    
    self.eventsReadout.text = stringEventCall;
}

- (void)viewDidLoad
{
    NSUserDefaults *defaultLoad = [NSUserDefaults standardUserDefaults];
    if(defaultLoad != nil)
    {
        NSString *eventsTextString = [defaultLoad objectForKey:@"Events"];
        
        self.eventsReadout.text = eventsTextString;
    }
    
    //default readout of the events list
    self.eventsReadout.text = @"You have no events currently scheduled.";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
