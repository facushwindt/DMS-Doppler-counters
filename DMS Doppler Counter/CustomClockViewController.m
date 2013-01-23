//
//  CustomClockViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 23/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomClockViewController.h"

@interface CustomClockViewController ()

@end

@implementation CustomClockViewController

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
	// Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewA"]];
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewB"]];
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewC"]];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
