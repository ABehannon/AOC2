//
//  PlanningViewController.h
//  AOC2
//
//  Created by Alex Behannon on 1/24/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>

//delegate
@protocol EventPlannerDelegate <NSObject>

@required
- (void)passEvent:(NSString *)eventString;
@end

@interface PlanningViewController : UIViewController <UITextFieldDelegate>

{
    NSString *dateString;
    NSString *eventString;
    IBOutlet UIDatePicker *pickDate;
    IBOutlet UITextField *setEvent;
    id<EventPlannerDelegate> delegateCustom1;
    NSDate* eventDateInfo;
    
    IBOutlet UILabel *swipeLeftLabel;
    UISwipeGestureRecognizer *swipeLeft;
    
}

@property (strong) id <EventPlannerDelegate> delegateCustom1;
-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(NSString*)modDate;
-(IBAction)dismissKB;

@end
