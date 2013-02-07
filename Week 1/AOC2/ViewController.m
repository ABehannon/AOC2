//
//  ViewController.m
//  AOC2
//
//  Created by Alex Behannon on 2/7/13.
//  Copyright (c) 2013 Alex Behannon. All rights reserved.
//

#import "ViewController.h"

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

//shotgun info and information setup
-(IBAction)shotgunFunction:(id)sender
{
    shotgunWeapon *shotgunInfo = (shotgunWeapon*)[weaponFactory createNewWeapon:SHOTGUN];
    if (shotgunInfo != nil)
    {
        [shotgunInfo setShotgunFireRate: 5];
        [shotgunInfo setShotgunShellsPerClip:6];
        [shotgunInfo calculateFireLength];
        
        displayLabel.text = [NSString stringWithFormat:@"It would take %d seconds to completely empty a %@ equipped with %i clips due to a rate of fire around %i BPM and average reload speed of %i.", shotgunInfo.weaponFireLength, shotgunInfo.weaponName, shotgunInfo.weaponClipCount, shotgunInfo.shotgunFireRate, shotgunInfo.weaponReloadSpeed];
    }
    
}

//shotgun info and information setup
-(IBAction)pistolFunction:(id)sender
{
    pistolWeapon *pistolInfo = (pistolWeapon*)[weaponFactory createNewWeapon:PISTOL];
    if (pistolInfo != nil)
    {
        [pistolInfo setPistolFireRate: 5];
        [pistolInfo setPistolExtendedMag:FALSE];
        [pistolInfo calculateFireLength];
        
        displayLabel.text = [NSString stringWithFormat:@"It would take %d seconds to completely empty a %@ equipped with %i clips due to a rate of fire around %i BPM and average reload speed of %i.", pistolInfo.weaponFireLength, pistolInfo.weaponName, pistolInfo.weaponClipCount, pistolInfo.pistolFireRate, pistolInfo.weaponReloadSpeed];
    }
    
}

//shotgun info and information setup
-(IBAction)rifleFunction:(id)sender
{
    rifleWeapon *rifleInfo = (rifleWeapon*)[weaponFactory createNewWeapon:RIFLE];
    if (rifleInfo != nil)
    {
        [rifleInfo setRifleFireRate: 5];
        [rifleInfo setRifleSpeedMags: 1];
        [rifleInfo calculateFireLength];
        
        displayLabel.text = [NSString stringWithFormat:@"It would take %d seconds to completely empty a %@ equipped with %i clips due to a rate of fire around %i BPM and average reload speed of %i.", rifleInfo.weaponFireLength, rifleInfo.weaponName, rifleInfo.weaponClipCount, rifleInfo.rifleFireRate, rifleInfo.weaponReloadSpeed];
    }
    
}


@end
