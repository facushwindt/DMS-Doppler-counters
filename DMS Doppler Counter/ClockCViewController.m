//
//  ClockCViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 05/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClockCViewController.h"
#import <QuartzCore/CATransform3D.h> 
#import <QuartzCore/CALayer.h>
#import "CounterRequest.h"
#import "PageControl.h"

#define NEEDLE_D_POS_X 160
#define NEEDLE_D_POS_Y 108

#define NEEDLE_E_POS_X 160
#define NEEDLE_E_POS_Y 287
@interface ClockCViewController ()
@property NSTimer *clockDETimer;
@end

@implementation ClockCViewController
@synthesize clockDValue = _clockDValue;
@synthesize needleD = _needleD;
@synthesize clockEValue = _clockEValue;
@synthesize needleE = _needleE;
@synthesize clockDETimer = _clockDETimer;



- (void)stopTimer{
    [self.clockDETimer invalidate];
    self.clockDETimer = nil;
}

- (void)startTimer {
    if(!self.clockDETimer){
        self.clockDETimer = [NSTimer scheduledTimerWithTimeInterval:1.0 
                                                             target:self 
                                                           selector:@selector(updateAll) 
                                                           userInfo:nil 
                                                            repeats:YES];
    }
}

-(void)updateAll{
    [self updateDClockNumber];
    [self updateEClockNumber];
    [self moveDNeedle];
    [self moveENeedle];
}

-(void)updateDClockNumber{
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    [self.clockDValue setText: [NSString stringWithFormat:@"%@",[rta objectAtIndex:DOPPLER_FAST_RESPONSE_QUEUE] ]];
}

-(void)updateEClockNumber{
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    [self.clockEValue setText: [NSString stringWithFormat:@"%@",[rta objectAtIndex:DOPPLER_FAST_PRE_QUEUE_LENGHT] ]];
}

-(void)resetDNeedle{
    CATransform3D rotatedTransform = CATransform3DIdentity;
    rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    self.needleD.layer.transform = rotatedTransform;
    self.needleD.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleD.center = CGPointMake(NEEDLE_D_POS_X, NEEDLE_D_POS_Y);
}

-(void)resetENeedle{
    CATransform3D rotatedTransform = CATransform3DIdentity;
    rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    self.needleE.layer.transform = rotatedTransform;
    self.needleE.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleE.center = CGPointMake(NEEDLE_E_POS_X, NEEDLE_E_POS_Y);
}


- (void)moveENeedle{
    [self resetENeedle];
    int valorDeReloj = [self.clockEValue.text intValue];  
    //int valorDeReloj = 20;
    int radian = 0;
    float pizzaSize = DOPPLER_FAST_PRE_QUEUE_LENGHT_MAX / 15; //tope de cola
    //float pizzaSize = 30 / 15; //tope de cola
    
    NSLog(@"%d", DOPPLER_FAST_PRE_QUEUE_LENGHT_MAX);
    
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
    
    CATransform3D rotatedTransform = self.needleE.layer.transform;
    rotatedTransform = CATransform3DRotate(rotatedTransform,radian * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    
    self.needleE.layer.transform = rotatedTransform;
    self.needleE.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleE.center = CGPointMake(NEEDLE_E_POS_X, NEEDLE_E_POS_Y);
}

- (void)moveDNeedle{
    [self resetDNeedle];
    int valorDeReloj = [self.clockDValue.text intValue];  
    //int valorDeReloj = 20;
    int radian = 0;
    float pizzaSize = DOPPLER_FAST_RESPONSE_QUEUE_MAX / 15; //tope de cola
    //float pizzaSize = 30 / 15; //tope de cola
    
    NSLog(@"%d", DOPPLER_FAST_RESPONSE_QUEUE_MAX);
    
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
    
    CATransform3D rotatedTransform = self.needleD.layer.transform;
    rotatedTransform = CATransform3DRotate(rotatedTransform,radian * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
    
    self.needleD.layer.transform = rotatedTransform;
    self.needleD.layer.anchorPoint = CGPointMake(0.5, 0.9);
    self.needleD.center = CGPointMake(NEEDLE_D_POS_X, NEEDLE_D_POS_Y);
}



- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //[self.clockBValue setText:@"50"];
    [self updateDClockNumber];
    [self updateEClockNumber];
    
    
    dispatch_queue_t drawCQueue = dispatch_queue_create("drawNeedleC", NULL);
    dispatch_async(drawCQueue, ^{
        CATransform3D rotatedTransform = self.needleD.layer.transform;
        rotatedTransform = CATransform3DRotate(rotatedTransform, -70 * M_PI / 180.0, 0.0f, 0.0f, 1.0f);
        dispatch_sync(dispatch_get_main_queue(), ^{
            self.needleD.layer.transform = rotatedTransform;
            self.needleD.layer.anchorPoint = CGPointMake(0.5, 0.9);
            self.needleD.center = CGPointMake(NEEDLE_D_POS_X, NEEDLE_D_POS_Y);
            
            self.needleE.layer.transform = rotatedTransform;
            self.needleE.layer.anchorPoint = CGPointMake(0.5, 0.9);
            self.needleE.center = CGPointMake(NEEDLE_E_POS_X, NEEDLE_E_POS_Y);
            
            [self startTimer];
            
        });
    });
    dispatch_release(drawCQueue);
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self stopTimer];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setClockDValue:nil];
    [self setNeedleD:nil];
    [self setClockEValue:nil];
    [self setNeedleE:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
