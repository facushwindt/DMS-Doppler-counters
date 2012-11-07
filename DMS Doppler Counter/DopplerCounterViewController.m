//
//  DopplerCounterViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 06/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DopplerCounterViewController.h"
#define SPIN_DURATION 2.0f //1.0f

@interface DopplerCounterViewController ()

@end

@implementation DopplerCounterViewController
@synthesize decena;
@synthesize dec0;
@synthesize dec1;
@synthesize dec2;
@synthesize dec3;
@synthesize dec4;
@synthesize dec5;
@synthesize dec6;
@synthesize dec7;
@synthesize dec8;
@synthesize dec9;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDecena:nil];
    [self setDec0:nil];
    [self setDec1:nil];
    [self setDec2:nil];
    [self setDec3:nil];
    [self setDec4:nil];
    [self setDec5:nil];
    [self setDec6:nil];
    [self setDec7:nil];
    [self setDec8:nil];
    [self setDec9:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)spinButton:(id)sender {
    
    [self spinDecena: 1 number:1 totalCiclos:25];

}

//spin decena

- (void) spinDecena: (int) rotations 
             number: (int) num
        totalCiclos: (int) totalCiclos


{
    
    if (rotations % 10 == 0){ 
       // [self spinCentena: 1 number:1];
    }   
    if (rotations % 10 == 0 && rotations != totalCiclos){ 
        [self spinDecena:rotations +1 number:0 totalCiclos:totalCiclos];
    }  
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: decena
                      duration: SPIN_DURATION /4
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            dec0.hidden = NO;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==1){
                            dec0.hidden = YES;
                            dec1.hidden = NO;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==2){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = NO;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==3){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = NO;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==4){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = NO;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==5){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = NO;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==6){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = NO;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==7){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = NO;
                            dec8.hidden = YES;
                            dec9.hidden = YES;
                        }else if (num==8){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = NO;
                            dec9.hidden = YES;
                        }else if (num==9){
                            dec0.hidden = YES;
                            dec1.hidden = YES;
                            dec2.hidden = YES;
                            dec3.hidden = YES;
                            dec4.hidden = YES;
                            dec5.hidden = YES;
                            dec6.hidden = YES;
                            dec7.hidden = YES;
                            dec8.hidden = YES;
                            dec9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self spinDecena:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                        
                        //                        [UIView transitionWithView: decena
                        //                                          duration:  SPIN_DURATION / 2
                        //                                           options: UIViewAnimationOptionTransitionFlipFromRight
                        //                                        animations: ^{
                        //                                            if(oval2){
                        //                                                cardBack3.hidden = YES;
                        //                                                cardFront3.hidden = YES;
                        //                                                card_oval.hidden = NO;
                        //                                            }
                        //                                            else {
                        //                                                cardBack3.hidden = YES;
                        //                                                cardFront3.hidden = NO;
                        //                                            }
                        //                                        }
                        //                                        completion: ^(BOOL finished) {
                        //                                            [self spinCard3: rotations - 1 oval:true];
                        //                                        }];
                    }];
}


@end
