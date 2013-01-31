//
//  ViewController.h
//  EventPlanner
//
//  Created by Alex Behannon on 1/24/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanningViewController.h"

@interface ViewController : UIViewController <EventPlannerDelegate>
{
    NSString *stringEventCall;
    IBOutlet UILabel *swipeRightLabel;
    UISwipeGestureRecognizer *swipeRight;
}

@property (nonatomic, strong) IBOutlet UITextView *eventsReadout;

@end
