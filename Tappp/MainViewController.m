//
//  MainViewController.m
//  Tappp
//
//  Created by Ventura Rangel on 3/25/13.
//  Copyright (c) 2013 Andrews Apps. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
@synthesize txtCount;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.




}

NSString *description = @"You can't go above 10!";
NSString *descriptionLow = @"You can't go below 0!";

int count = 0;
-(IBAction) bigButtonPress:(id)sender{
   
    
    if (count >=9) {
        UIAlertView *highAlert = [[UIAlertView alloc] initWithTitle:@"TARNATION!" message:@"You can't go above 9" delegate:nil cancelButtonTitle:@"All these rules!" otherButtonTitles:nil, nil];
        [highAlert show];
        txtCount.text = [NSString stringWithFormat:@"%d", count];
    }else{
        count = count +1;
        txtCount.text = [NSString stringWithFormat:@"%d", count];

    }
    
}
-(IBAction)smallButtonPress:(id)sender{
    txtCount.text = [NSString stringWithFormat:@"%d", count];
    if (count <= 0) {
        UIAlertView *highAlert = [[UIAlertView alloc] initWithTitle:@"BEJABBERS!" message:@"You can't go below 0" delegate:nil cancelButtonTitle:@"Alright..." otherButtonTitles:nil, nil];
        [highAlert show];
        txtCount.text = [NSString stringWithFormat:@"%d", count];

    } else {
        count = count - 1;
        txtCount.text = [NSString stringWithFormat:@"%d", count];

    }
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
