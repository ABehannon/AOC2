//
//  ViewController.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Shotgun button commands, enabling/disabling
-(IBAction)shotgunFunction:(id)sender
{
    int stepperCount = stepperButton.value;
    infoTextField.text = [NSString stringWithFormat:@"SHOTGUN - Extra clips set to %d", stepperCount];
    
    //enable and disable buttons
    shotgunButton.enabled = false;
    [shotgunButton setImage:[UIImage imageNamed:@"Shotgun3.png"] forState:UIControlStateNormal];
    [shotgunButton setBackgroundImage: [UIImage imageNamed:@"Shotgun3.png"] forState:UIControlStateNormal];
    
    pistolButton.enabled = true;
    [pistolButton setImage:[UIImage imageNamed:@"Pistol1.png"] forState:UIControlStateNormal];
    [pistolButton setBackgroundImage: [UIImage imageNamed:@"Pistol1.png"] forState:UIControlStateNormal];
    
    rifleButton.enabled = true;
    [rifleButton setImage:[UIImage imageNamed:@"Rifle1.png"] forState:UIControlStateNormal];
    [rifleButton setBackgroundImage: [UIImage imageNamed:@"Rifle1.png"] forState:UIControlStateNormal];
    
    calculateButton.enabled = true;
    [calculateButton setImage:[UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    [calculateButton setBackgroundImage: [UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    
}

//Pistol button commands, enabling/disabling
-(IBAction)pistolFunction:(id)sender
{
    int stepperCount = stepperButton.value;
    infoTextField.text = [NSString stringWithFormat:@"PISTOL - Extra clips set to %d", stepperCount];
    
    //enable and disable buttons
    shotgunButton.enabled = true;
    [shotgunButton setImage:[UIImage imageNamed:@"Shotgun1.png"] forState:UIControlStateNormal];
    [shotgunButton setBackgroundImage: [UIImage imageNamed:@"Shotgun1.png"] forState:UIControlStateNormal];
    
    pistolButton.enabled = false;
    [pistolButton setImage:[UIImage imageNamed:@"Pistol3.png"] forState:UIControlStateNormal];
    [pistolButton setBackgroundImage: [UIImage imageNamed:@"Pistol3.png"] forState:UIControlStateNormal];
    
    rifleButton.enabled = true;
    [rifleButton setImage:[UIImage imageNamed:@"Rifle1.png"] forState:UIControlStateNormal];
    [rifleButton setBackgroundImage: [UIImage imageNamed:@"Rifle1.png"] forState:UIControlStateNormal];
    
    calculateButton.enabled = true;
    [calculateButton setImage:[UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    [calculateButton setBackgroundImage: [UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    
}

//Rifle button commands, enabling/disabling
-(IBAction)rifleFunction:(id)sender
{
    int stepperCount = stepperButton.value;
    infoTextField.text = [NSString stringWithFormat:@"RIFLE - Extra clips set to %d", stepperCount];
    
    //enable and disable buttons
    shotgunButton.enabled = true;
    [shotgunButton setImage:[UIImage imageNamed:@"Shotgun1.png"] forState:UIControlStateNormal];
    [shotgunButton setBackgroundImage: [UIImage imageNamed:@"Shotgun1.png"] forState:UIControlStateNormal];
    
    pistolButton.enabled = true;
    [pistolButton setImage:[UIImage imageNamed:@"Pistol1.png"] forState:UIControlStateNormal];
    [pistolButton setBackgroundImage: [UIImage imageNamed:@"Pistol1.png"] forState:UIControlStateNormal];
    
    rifleButton.enabled = false;
    [rifleButton setImage:[UIImage imageNamed:@"Rifle3.png"] forState:UIControlStateNormal];
    [rifleButton setBackgroundImage: [UIImage imageNamed:@"Rifle3.png"] forState:UIControlStateNormal];
    
    calculateButton.enabled = true;
    [calculateButton setImage:[UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    [calculateButton setBackgroundImage: [UIImage imageNamed:@"Calculate1.png"] forState:UIControlStateNormal];
    
}

//Calculate the stuff!
-(IBAction)calculateFunction:(id)sender
{
    int stepperCount = stepperButton.value;
    if (shotgunButton.enabled == false)
    {
        shotgunWeapon *shotgunInfo = (shotgunWeapon*)[weaponFactory createNewWeapon:SHOTGUN];
        if (shotgunInfo != nil)
        {
            [shotgunInfo setShotgunFireRate: 5];
            [shotgunInfo setShotgunShellsPerClip:6];
            [shotgunInfo setWeaponClipCount:(stepperCount + shotgunInfo.weaponClipCount)];
            [shotgunInfo calculateFireLength];
            
            infoTextField.text = [NSString stringWithFormat:@"%@ - Time To Fire: %i seconds", shotgunInfo.weaponName, shotgunInfo.weaponFireLength];
        }
        
    } else if (pistolButton.enabled == false)
    {
        pistolWeapon *pistolInfo = (pistolWeapon*)[weaponFactory createNewWeapon:PISTOL];
        if (pistolInfo != nil)
        {
            [pistolInfo setPistolFireRate: 5];
            [pistolInfo setPistolExtendedMag:FALSE];
            [pistolInfo setWeaponClipCount:(stepperCount + pistolInfo.weaponClipCount)];
            [pistolInfo calculateFireLength];
            
            infoTextField.text = [NSString stringWithFormat:@"%@ - Time To Fire: %i seconds", pistolInfo.weaponName, pistolInfo.weaponFireLength];
        }
    } else if (rifleButton.enabled == false)
    {
        rifleWeapon *rifleInfo = (rifleWeapon*)[weaponFactory createNewWeapon:RIFLE];
        if (rifleInfo != nil)
        {
            [rifleInfo setRifleFireRate: 5];
            [rifleInfo setWeaponClipCount:(stepperCount + rifleInfo.weaponClipCount)];
            [rifleInfo calculateFireLength];
            
            infoTextField.text = [NSString stringWithFormat:@"%@ - Time To Fire: %i seconds", rifleInfo.weaponName, rifleInfo.weaponFireLength];
        }
    }
}

//Color Changing Segment Buttons!
-(IBAction)onSegment:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if (segControl != nil)
    {
        int selectedSegment = segControl.selectedSegmentIndex;
        switch (selectedSegment)
        {
            case 0:
                self.view.backgroundColor = [UIColor blackColor];
                BGLabel.textColor = [UIColor whiteColor];
                infoTextField.textColor = [UIColor whiteColor];
                stepperLabel.textColor = [UIColor whiteColor];
                break;
                
            case 1:
                self.view.backgroundColor = [UIColor grayColor];
                BGLabel.textColor = [UIColor blackColor];
                infoTextField.textColor = [UIColor blackColor];
                stepperLabel.textColor = [UIColor blackColor];
                break;
                
            case 2:
                self.view.backgroundColor = [UIColor whiteColor];
                BGLabel.textColor = [UIColor blackColor];
                infoTextField.textColor = [UIColor blackColor];
                stepperLabel.textColor = [UIColor blackColor];
                break;
                
            default:
                self.view.backgroundColor = [UIColor blackColor];
                BGLabel.textColor = [UIColor whiteColor];
                infoTextField.textColor = [UIColor whiteColor];
                stepperLabel.textColor = [UIColor whiteColor];
                break;
        }
    }
}

//Second View Button
-(IBAction)onClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

//Shotgun Button Setup
-(IBAction)stepperFunction:(id)sender
{
    int stepperCount = stepperButton.value;
    if (shotgunButton.enabled == false)
    {
        infoTextField.text = [NSString stringWithFormat:@"SHOTGUN - Extra clips set to %d", stepperCount];
    } else if (pistolButton.enabled == false)
    {
        infoTextField.text = [NSString stringWithFormat:@"PISTOL - Extra clips set to %d", stepperCount];
    } else if (rifleButton.enabled == false)
    {
        infoTextField.text = [NSString stringWithFormat:@"RIFLE - Extra clips set to %d", stepperCount];
    } else
    {
        infoTextField.text = [NSString stringWithFormat:@"NO WEAPON - Extra clips set to %d", stepperCount];
    }
    
    stepperLabel.text = [NSString stringWithFormat:@"%d", stepperCount];
    
}


@end
