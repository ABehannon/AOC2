//
//  SecondViewController.h
//  AOC2
//
//  Created by Alex Behannon on 2/21/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventDelegate <NSObject>

@required
- (void)passEvent:(NSString *)eventString;
@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>

{
    NSString *date;
    NSString *event;
    
    NSDate* dateInfo;
    
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UITextField *setEvent;
    
    id<EventDelegate> customDelegate1;
    
}

@property (strong) id <EventDelegate> customDelegate1;

-(IBAction)onClick:(id)sender;
-(IBAction)onChange:(id)sender;
-(IBAction)keyboardDismiss;

-(NSString*)editDate;

@end
