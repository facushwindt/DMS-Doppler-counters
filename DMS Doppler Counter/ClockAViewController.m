//
//  ClockAViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 10/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


//SENDING QUEUE STATUS


//TIP: primero llamar a "updateClockNumber" y despues a "moveNeedle"

#import "ClockAViewController.h"
#import <QuartzCore/CATransform3D.h> 
#import <QuartzCore/CALayer.h>
#import "CounterRequest.h"

#define NEEDLE_A_POS_X 160
#define NEEDLE_A_POS_Y 236

@interface ClockAViewController ()
@property NSTimer * sendingQueueStatusTimer;
@end

@implementation ClockAViewController
@synthesize needleA = _needleA;
@synthesize clockValue = _clockValue;
@synthesize sendingQueueStatusTimer;


- (void)stopTimer{
    [self.sendingQueueStatusTimer invalidate];
    self.sendingQueueStatusTimer = nil;
}

- (void)startTimer {
    if(!self.sendingQueueStatusTimer){
        self.sendingQueueStatusTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 
                                                       target:self 
                                                     selector:@selector(updateAll) 
                                                     userInfo:nil 
                                                      repeats:YES];
    }
}

-(void)updateAll{
    [self updateClockNumber];
    [self moveNeedle];
}

-(void)updateClockNumber{
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    NSLog(@"%@",rta);
//    [self.clockValue setText:@"17"];
    if(rta){
       [self.clockValue setText:[NSString stringWithFormat:@"%@",[rta objectAtIndex:DOPPLER_SENDING_QUEUE_STATUS]]];
    }
    else { //if rta is nil
        [self.clockValue setText:@"0"];
    }
}

-(void)resetNeedle{
    CATransform3D rotatedTransform = CATransform3DIdentity;
    rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    self.needleA.layer.transform = rotatedTransform;
    self.needleA.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleA.center = CGPointMake(NEEDLE_A_POS_X, NEEDLE_A_POS_Y);
    
}

- (void)moveNeedle{
    [self resetNeedle];
    int valorDeReloj = [self.clockValue.text intValue];  
    //int valorDeReloj = 20;
    int radian = 0;
    float pizzaSize = DOPPLER_SENDING_QUEUE_STATUS_MAX / 15; //tope de cola
    //float pizzaSize = 30 / 15; //tope de cola
    
    NSLog(@"%d", DOPPLER_SENDING_QUEUE_STATUS_MAX);
    
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
    
    CATransform3D rotatedTransform = self.needleA.layer.transform;
    rotatedTransform = CATransform3DRotate(rotatedTransform,radian * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    
    self.needleA.layer.transform = rotatedTransform;
    self.needleA.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleA.center = CGPointMake(NEEDLE_A_POS_X, NEEDLE_A_POS_Y);
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //[self.clockBValue setText:@"50"];
    [self updateClockNumber];
    
    dispatch_queue_t drawAQueue = dispatch_queue_create("drawNeedleA", NULL);
    dispatch_async(drawAQueue, ^{
        CATransform3D rotatedTransform = self.needleA.layer.transform;
        rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.needleA.layer.transform = rotatedTransform;
            self.needleA.layer.anchorPoint = CGPointMake(0.5, 0.9);
            self.needleA.center = CGPointMake(NEEDLE_A_POS_X, NEEDLE_A_POS_Y);
            
            [self startTimer];

        });
    });
    dispatch_release(drawAQueue);
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //invalido el timer !
    [self stopTimer];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setClockValue:nil];
    [self setNeedleA:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
