//
//  ViewController.m
//  EventPlanner
//
//  Created by Alex Behannon on 2/21/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Calling the string or edited string
-(void)passEvent: (NSString*)eventString
{
    if (callEvent != nil) {
        callEvent = [callEvent stringByAppendingString:eventString];
    }
    else {
        callEvent = [NSString stringWithFormat:@"%@", eventString];
    }
    
    readout.text = callEvent;
}

//Save Events
-(IBAction)saveButton:(id)sender
{
    NSUserDefaults *defaultInfo = [NSUserDefaults standardUserDefaults];
    if (defaultInfo !=nil)
    {
        NSString *eventsTextString = self.events.text;
        
        [defaultInfo setObject:eventsTextString forKey:@"Events"];
        
        [defaultInfo synchronize];
        NSLog(@"Saved");
        
    }
}

- (void)viewDidLoad
{
    
    NSUserDefaults *defaultLoad = [NSUserDefaults standardUserDefaults];
    if(defaultLoad != nil)
    {
        NSString *eventsTextString = [defaultLoad objectForKey:@"Events"];
        
        self.events.text = eventsTextString;
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//Right Swipe setup
-(void)viewDidAppear:(BOOL)animated
{
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRight:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:swipeRight];
}

//Swipe Right call
-(void)onRight:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SecondViewController *showSecondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        showSecondView.customDelegate1 = (id)self;
        [self presentViewController:showSecondView animated:TRUE completion:nil];
    }
}

//onClick call, based on what tagged button is being pressed
-(IBAction)onClick:(id)sender;
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        //Tag 0 = Second View Controller
        if(button.tag == 0)
        {
            SecondViewController *showSecondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
            showSecondView.customDelegate1 = (id)self;
            [self presentViewController:showSecondView animated:TRUE completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
