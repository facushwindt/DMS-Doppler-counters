//
//  ClockBViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 05/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClockBViewController.h"
#import <QuartzCore/CATransform3D.h> 
#import <QuartzCore/CALayer.h>
#import "CounterRequest.h"
#import "PageControl.h"
//NORMAL RESPONSE QUEUE STATUS 
//NORMAL PRE QUEUE STATUS 

#define NEEDLE_B_POS_X 160
#define NEEDLE_B_POS_Y 110

#define NEEDLE_C_POS_X 160
#define NEEDLE_C_POS_Y 288

@interface ClockBViewController ()
@property NSTimer * clockCDTimer;
@end


@implementation ClockBViewController
@synthesize clockBValue = _clockBValue;
@synthesize needleB = _needleB;
@synthesize clockCValue = _clockCValue;
@synthesize needleC = _needleC;
@synthesize clockCDTimer = _clockCDTimer;


- (void)stopTimer{
    [self.clockCDTimer invalidate];
    self.clockCDTimer = nil;
}

- (void)startTimer {
    if(!self.clockCDTimer){
        self.clockCDTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 
                                                                        target:self 
                                                                      selector:@selector(updateAll) 
                                                                      userInfo:nil 
                                                                       repeats:YES];
    }
}

-(void)updateAll{
    [self updateBClockNumber];
    [self updateCClockNumber];
    [self moveBNeedle];
    [self moveCNeedle];
}

-(void)updateBClockNumber{
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    //[self.clockBValue setText: @"300"];
    [self.clockBValue setText: [NSString stringWithFormat:@"%@",[rta objectAtIndex:DOPPLER_NORMAL_RESPONSE_QUEUE] ]];
}

-(void)updateCClockNumber{
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
//    [self.clockCValue setText: @"30"];
    [self.clockCValue setText: [NSString stringWithFormat:@"%@",[rta objectAtIndex:DOPPLER_NORMAL_PRE_QUEUE_LENGHT] ]];
}

-(void)resetBNeedle{
    CATransform3D rotatedTransform = CATransform3DIdentity;
    rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    self.needleB.layer.transform = rotatedTransform;
    self.needleB.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleB.center = CGPointMake(NEEDLE_B_POS_X, NEEDLE_B_POS_Y);
}

-(void)resetCNeedle{
    CATransform3D rotatedTransform = CATransform3DIdentity;
    rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    self.needleC.layer.transform = rotatedTransform;
    self.needleC.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleC.center = CGPointMake(NEEDLE_C_POS_X, NEEDLE_C_POS_Y);
}


- (void)moveCNeedle{
    [self resetCNeedle];
    int valorDeReloj = [self.clockCValue.text intValue];  
    //int valorDeReloj = 20;
    int radian = 0;
    float pizzaSize = DOPPLER_NORMAL_PRE_QUEUE_LENGHT_MAX / 15; //tope de cola
    //float pizzaSize = 30 / 15; //tope de cola
    
    NSLog(@"%d", DOPPLER_NORMAL_PRE_QUEUE_LENGHT_MAX);
    
    int cualPizza = 0;
    for (int i=0; i < valorDeReloj; i += pizzaSize) {
        cualPizza +=1;
        
    }
    switch (cualPizza) {
        case 0:
            radian = 0;
            break;
        case 1:
            radian = 9;
            break;
        case 2:
            radian = 18;
            break;    
        case 3:
            radian = 27;
            break;    
        case 4:
            radian = 36;
            break;    
        case 5:
            radian = 45;
            break;    
        case 6:
            radian = 54;
            break;
        case 7:
            radian = 63;
            break;
        case 8:
            radian = 72;
            break;
        case 9:
            radian = 81;
            break;
        case 10:
            radian = 90;
            break;
        case 11:
            radian = 99;
            break;
        case 12:
            radian = 108;
            break;
        case 13:
            radian = 117;
            break;
        case 14:
            radian = 132;
            break;
        default:
            radian = 140;
            break;
    }
    
    CATransform3D rotatedTransform = self.needleC.layer.transform;
    rotatedTransform = CATransform3DRotate(rotatedTransform,radian * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    
    self.needleC.layer.transform = rotatedTransform;
    self.needleC.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleC.center = CGPointMake(NEEDLE_C_POS_X, NEEDLE_C_POS_Y);
}

- (void)moveBNeedle{
    [self resetBNeedle];
    int valorDeReloj = [self.clockBValue.text intValue];  
    //int valorDeReloj = 20;
    int radian = 0;
    float pizzaSize = DOPPLER_NORMAL_RESPONSE_QUEUE_MAX / 15; //tope de cola
   //float pizzaSize = 30 / 15; //tope de cola
    
    NSLog(@"%d", DOPPLER_NORMAL_RESPONSE_QUEUE_MAX);
    
    int cualPizza = 0;
    for (int i=0; i < valorDeReloj; i += pizzaSize) {
        cualPizza +=1;
        
    }
    switch (cualPizza) {
        case 0:
            radian = 0;
            break;
        case 1:
            radian = 9;
            break;
        case 2:
            radian = 18;
            break;    
        case 3:
            radian = 27;
            break;    
        case 4:
            radian = 36;
            break;    
        case 5:
            radian = 45;
            break;    
        case 6:
            radian = 54;
            break;
        case 7:
            radian = 63;
            break;
        case 8:
            radian = 72;
            break;
        case 9:
            radian = 81;
            break;
        case 10:
            radian = 90;
            break;
        case 11:
            radian = 99;
            break;
        case 12:
            radian = 108;
            break;
        case 13:
            radian = 117;
            break;
        case 14:
            radian = 132;
            break;
        default:
            radian = 140;
            break;
    }
    
    CATransform3D rotatedTransform = self.needleB.layer.transform;
    rotatedTransform = CATransform3DRotate(rotatedTransform,radian * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    
    self.needleB.layer.transform = rotatedTransform;
    self.needleB.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleB.center = CGPointMake(NEEDLE_B_POS_X, NEEDLE_B_POS_Y);
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)viewDidUnload
{
    [self setClockBValue:nil];
    [self setNeedleB:nil];
    [self setClockCValue:nil];
    [self setNeedleC:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //[self.clockBValue setText:@"50"];
    [self updateBClockNumber];
    [self updateCClockNumber];
    
    
    dispatch_queue_t drawBQueue = dispatch_queue_create("drawNeedleB", NULL);
    dispatch_async(drawBQueue, ^{
        CATransform3D rotatedTransform = self.needleB.layer.transform;
        rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.needleB.layer.transform = rotatedTransform;
            self.needleB.layer.anchorPoint = CGPointMake(0.5, 0.9);
            self.needleB.center = CGPointMake(NEEDLE_B_POS_X, NEEDLE_B_POS_Y);
            
            self.needleC.layer.transform = rotatedTransform;
            self.needleC.layer.anchorPoint = CGPointMake(0.5, 0.9);
            self.needleC.center = CGPointMake(NEEDLE_C_POS_X, NEEDLE_C_POS_Y);
            
            [self startTimer];

        });
    });
    dispatch_release(drawBQueue);
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self stopTimer];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
