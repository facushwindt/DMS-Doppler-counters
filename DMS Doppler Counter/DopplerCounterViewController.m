//
//  DopplerCounterViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 06/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DopplerCounterViewController.h"
#import "CounterRequest.h"
#define SPIN_DURATION 2.0f //1.0f

int largestSentCampaignValue =0;
int daysSinceStartUpValue =0;
int emailsSentSinceStartUpValue =0;
int campaingsSentSinceStartUpValue =0;
int emailsSentTodayValue = 0;
int campaingSentTodayValue =0;

@interface DopplerCounterViewController ()
@property NSNumber *emailCount;

@end

@implementation DopplerCounterViewController
@synthesize largestSentCampaignDec0;
@synthesize largestSentCampaignDec1;
@synthesize largestSentCampaignDec2;
@synthesize largestSentCampaignDec3;
@synthesize largestSentCampaignDec4;
@synthesize largestSentCampaignDec5;
@synthesize largestSentCampaignDec6;
@synthesize largestSentCampaignDec7;
@synthesize largestSentCampaignDec8;
@synthesize largestSentCampaignDec9;
@synthesize unidad;
@synthesize uni0;
@synthesize uni1;
@synthesize uni2;
@synthesize uni3;
@synthesize uni4;
@synthesize uni5;
@synthesize uni6;
@synthesize uni7;
@synthesize uni8;
@synthesize uni9;
@synthesize decena;
@synthesize dec1;
@synthesize dec0;
@synthesize dec2;
@synthesize dec3;
@synthesize dec4;
@synthesize dec5;
@synthesize dec6;
@synthesize dec7;

@synthesize dec8;
@synthesize dec9;
@synthesize centena;
@synthesize cen0;
@synthesize cen1;
@synthesize cen2;
@synthesize cen3;
@synthesize cen4;
@synthesize cen5;
@synthesize cen6;
@synthesize cen7;
@synthesize cen8;
@synthesize cen9;
@synthesize largestSentCampaignDecena;

@synthesize largestSentCampaignCentena;
@synthesize largestSentCampaign;
@synthesize largestSentCampaignUnidad0;
@synthesize largestSentCampaignUnidad1;
@synthesize largestSentCampaignUnidad2;
@synthesize largestSentCampaignUnidad3;
@synthesize largestSentCampaignUnidad4;
@synthesize largestSentCampaignUnidad5;
@synthesize largestSentCampaignUnidad6;
@synthesize largestSentCampaignUnidad7;
@synthesize largestSentCampaignUnidad8;
@synthesize largestSentCampaignUnidad9;


@synthesize largestSentCampaignCen0;
@synthesize largestSentCampaignCen1;
@synthesize largestSentCampaignCen2;
@synthesize largestSentCampaignCen3;
@synthesize largestSentCampaignCen4;
@synthesize largestSentCampaignCen5;
@synthesize largestSentCampaignCen6;
@synthesize largestSentCampaignCen7;
@synthesize largestSentCampaignCen8;
@synthesize largestSentCampaignCen9;
@synthesize LargestSentCampaignFisrtColon;
@synthesize largestSentCampaignUnidadDeMil;
@synthesize largestSentCampaignUnidadDeMil0;
@synthesize largestSentCampaignUnidadDeMil1;
@synthesize largestSentCampaignUnidadDeMil2;
@synthesize largestSentCampaignUnidadDeMil3;
@synthesize largestSentCampaignUnidadDeMil4;
@synthesize largestSentCampaignUnidadDeMil5;
@synthesize largestSentCampaignUnidadDeMil6;
@synthesize largestSentCampaignUnidadDeMil7;
@synthesize largestSentCampaignUnidadDeMil8;
@synthesize largestSentCampaignUnidadDeMil9;
@synthesize largestSentCampaignDecenaDeMil;
@synthesize largestSentCampaignDecenaDeMil1;
@synthesize largestSentCampaignDecenaDeMil0;
@synthesize largestSentCampaignDecenaDeMil2;
@synthesize largestSentCampaignDecenaDeMil3;
@synthesize largestSentCampaignDecenaDeMil4;
@synthesize largestSentCampaignDecenaDeMil5;
@synthesize largestSentCampaignDecenaDeMil6;
@synthesize largestSentCampaignDecenaDeMil7;
@synthesize largestSentCampaignDecenaDeMil8;
@synthesize largestSentCampaignDecenaDeMil9;
@synthesize largestSentCampaignCentenaDeMil;
@synthesize largestSentCampaignCentenaDeMil0;
@synthesize largestSentCampaignCentenaDeMil1;
@synthesize largestSentCampaignCentenaDeMil2;
@synthesize largestSentCampaignCentenaDeMil3;
@synthesize largestSentCampaignCentenaDeMil4;
@synthesize largestSentCampaignCentenaDeMil5;
@synthesize largestSentCampaignCentenaDeMil6;
@synthesize largestSentCampaignCentenaDeMil7;
@synthesize largestSentCampaignCentenaDeMil8;
@synthesize largestSentCampaignCentenaDeMil9;
@synthesize largestSentCampaignSecondColon;
@synthesize largestSentCampaignUnidadDeMillon;
@synthesize largestSentCampaignUnidadDeMillon0;
@synthesize largestSentCampaignUnidadDeMillon1;
@synthesize largestSentCampaignUnidadDeMillon2;
@synthesize largestSentCampaignUnidadDeMillon3;
@synthesize largestSentCampaignUnidadDeMillon4;
@synthesize largestSentCampaignUnidadDeMillon5;
@synthesize largestSentCampaignUnidadDeMillon6;
@synthesize largestSentCampaignUnidadDeMillon7;
@synthesize largestSentCampaignUnidadDeMillon8;
@synthesize largestSentCampaignUnidadDeMillon9;
@synthesize largestSentCampaignDecenaDeMillon;
@synthesize largestSentCampaignDecenaDeMillon0;
@synthesize largestSentCampaignDecenaDeMillon1;
@synthesize largestSentCampaignDecenaDeMillon2;
@synthesize aTimer = _aTimer;
@synthesize largestSentCampaignDecenaDeMillon3;
@synthesize largestSentCampaignDecenaDeMillon4;
@synthesize largestSentCampaignDecenaDeMillon5;
@synthesize largestSentCampaignDecenaDeMillon6;
@synthesize largestSentCampaignDecenaDeMillon7;
@synthesize largestSentCampaignDecenaDeMillon8;
@synthesize largestSentCampaignDecenaDeMillon9;


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    unidad.hidden = YES;
    decena.hidden = YES;
    centena.hidden = YES;
    largestSentCampaign.hidden = YES;
    largestSentCampaignDecena.hidden = YES;
    largestSentCampaignCentena.hidden = YES;
    LargestSentCampaignFisrtColon.hidden = YES;
    largestSentCampaignUnidadDeMil.hidden = YES;
    largestSentCampaignDecenaDeMil.hidden = YES;
    largestSentCampaignSecondColon.hidden = YES;
    largestSentCampaignCentenaDeMil.hidden = YES;
    largestSentCampaignUnidadDeMillon.hidden = YES;
    largestSentCampaignDecenaDeMillon.hidden = YES;

    self.aTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 
                                                   target:self 
                                                 selector:@selector(calculateDaysSinceStartUpForAnimation) 
                                                 userInfo:nil 
                                                  repeats:YES];
    daysSinceStartUpValue = 0; // aca debe levantar el ultimo valor de user default
    largestSentCampaignValue =0;
    emailsSentSinceStartUpValue =0;
    campaingsSentSinceStartUpValue =0;
    emailsSentTodayValue = 0;
    campaingSentTodayValue =0;
    
}
-(void)viewWillDisappear:(BOOL)animated{
    [self.aTimer invalidate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDecena:nil];
    
    [self setLargestSentCampaignDecena:nil];
    [self setLargestSentCampaign:nil];
   

    [self setDec8:nil];
    [self setDec1:nil];
    [self setDec0:nil];
    [self setDec2:nil];
    [self setDec3:nil];
    [self setDec4:nil];
    [self setDec5:nil];
    [self setDec6:nil];
    [self setDec7:nil];
    [self setDec9:nil];
    [self setUnidad:nil];
    [self setUni0:nil];
    [self setUni1:nil];
    [self setUni2:nil];
    [self setUni3:nil];
    [self setUni4:nil];
    [self setUni5:nil];
    [self setUni6:nil];
    [self setUni7:nil];
    [self setUni8:nil];
    [self setUni9:nil];
    [self setCen0:nil];
    [self setCen1:nil];
    [self setCen2:nil];
    [self setCen3:nil];
    [self setCen4:nil];
    [self setCen5:nil];
    [self setCen6:nil];
    [self setCen7:nil];
    [self setCen8:nil];
    [self setCen9:nil];
    [self setLargestSentCampaignUnidad0:nil];
    [self setLargestSentCampaignUnidad1:nil];
    [self setLargestSentCampaignUnidad2:nil];
    [self setLargestSentCampaignUnidad3:nil];
    [self setLargestSentCampaignUnidad4:nil];
    [self setLargestSentCampaignUnidad5:nil];
    [self setLargestSentCampaignUnidad6:nil];
    [self setLargestSentCampaignUnidad7:nil];
    [self setLargestSentCampaignUnidad8:nil];
    [self setLargestSentCampaignUnidad9:nil];
    [self setLargestSentCampaignDec0:nil];
    [self setLargestSentCampaignDec1:nil];
    [self setLargestSentCampaignDec2:nil];
    [self setLargestSentCampaignDec3:nil];
    [self setLargestSentCampaignDec4:nil];
    [self setLargestSentCampaignDec5:nil];
    [self setLargestSentCampaignDec6:nil];
    [self setLargestSentCampaignDec7:nil];
    [self setLargestSentCampaignDec8:nil];
    [self setLargestSentCampaignDec8:nil];
    [self setLargestSentCampaignDec9:nil];
    [self setLargestSentCampaignCen0:nil];
    [self setLargestSentCampaignCen1:nil];
    [self setLargestSentCampaignCen2:nil];
    [self setLargestSentCampaignCen3:nil];
    [self setLargestSentCampaignCen4:nil];
    [self setLargestSentCampaignCen5:nil];
    [self setLargestSentCampaignCen6:nil];
    [self setLargestSentCampaignCen7:nil];
    [self setLargestSentCampaignCen8:nil];
    [self setLargestSentCampaignCen9:nil];
    [self setLargestSentCampaignFisrtColon:nil];
    [self setLargestSentCampaignUnidadDeMil:nil];
    [self setLargestSentCampaignUnidadDeMil1:nil];
    [self setLargestSentCampaignUnidadDeMil2:nil];
    [self setLargestSentCampaignUnidadDeMil3:nil];
    [self setLargestSentCampaignUnidadDeMil4:nil];
    [self setLargestSentCampaignUnidadDeMil5:nil];
    [self setLargestSentCampaignUnidadDeMil6:nil];
    [self setLargestSentCampaignUnidadDeMil7:nil];
    [self setLargestSentCampaignUnidadDeMil8:nil];
    [self setLargestSentCampaignUnidadDeMil9:nil];
    [self setLargestSentCampaignDecenaDeMil:nil];
    [self setLargestSentCampaignDecenaDeMil1:nil];
    [self setLargestSentCampaignDecenaDeMil0:nil];
    [self setLargestSentCampaignDecenaDeMil2:nil];
    [self setLargestSentCampaignDecenaDeMil3:nil];
    [self setLargestSentCampaignDecenaDeMil4:nil];
    [self setLargestSentCampaignDecenaDeMil5:nil];
    [self setLargestSentCampaignDecenaDeMil6:nil];
    [self setLargestSentCampaignDecenaDeMil7:nil];
    [self setLargestSentCampaignDecenaDeMil8:nil];
    [self setLargestSentCampaignDecenaDeMil9:nil];
    [self setLargestSentCampaignCentenaDeMil:nil];
    [self setLargestSentCampaignCentenaDeMil0:nil];
    [self setLargestSentCampaignCentenaDeMil1:nil];
    [self setLargestSentCampaignCentenaDeMil2:nil];
    [self setLargestSentCampaignCentenaDeMil3:nil];
    [self setLargestSentCampaignCentenaDeMil4:nil];
    [self setLargestSentCampaignCentenaDeMil5:nil];
    [self setLargestSentCampaignCentenaDeMil6:nil];
    [self setLargestSentCampaignCentenaDeMil7:nil];
    [self setLargestSentCampaignCentenaDeMil8:nil];
    [self setLargestSentCampaignCentenaDeMil9:nil];
    [self setLargestSentCampaignSecondColon:nil];
    [self setLargestSentCampaignUnidadDeMillon:nil];
    [self setLargestSentCampaignUnidadDeMillon0:nil];
    [self setLargestSentCampaignUnidadDeMillon1:nil];
    [self setLargestSentCampaignUnidadDeMillon2:nil];
    [self setLargestSentCampaignUnidadDeMillon3:nil];
    [self setLargestSentCampaignUnidadDeMillon4:nil];
    [self setLargestSentCampaignUnidadDeMillon5:nil];
    [self setLargestSentCampaignUnidadDeMillon6:nil];
    [self setLargestSentCampaignUnidadDeMillon7:nil];
    [self setLargestSentCampaignUnidadDeMillon8:nil];
    [self setLargestSentCampaignUnidadDeMillon9:nil];
    [self setLargestSentCampaignDecenaDeMillon:nil];
    [self setLargestSentCampaignDecenaDeMillon0:nil];
    [self setLargestSentCampaignDecenaDeMillon1:nil];
    [self setLargestSentCampaignDecenaDeMillon2:nil];
    [self setLargestSentCampaignDecenaDeMillon3:nil];
    [self setLargestSentCampaignDecenaDeMillon4:nil];
    [self setLargestSentCampaignDecenaDeMillon5:nil];
    [self setLargestSentCampaignDecenaDeMillon6:nil];
    [self setLargestSentCampaignDecenaDeMillon7:nil];
    [self setLargestSentCampaignDecenaDeMillon8:nil];
    [self setLargestSentCampaignDecenaDeMillon9:nil];
    [self setLargestSentCampaignUnidadDeMil0:nil];
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

-(void)doAllCounterOprerations{
    //tengo un arreglo con 6 valores
    //hay que hacer calculos para cada uno de ellos de forma independiente
    
}


-(void)calculateLargestSentCampaignForAnimation{
   
    NSMutableArray *rta = [[CounterRequest start] copy];

    NSString *stringNumber= [rta objectAtIndex: DOPPLER_LARGETS_SENT_CAMPAIGN];
    NSLog(@"Triste %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
  //if([contador intValue] != largestSentCampaignValue ){ // do something is the number are differents !!
        largestSentCampaignValue = [contador intValue];
        for (int index = 0; index < [contador length]; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                largestSentCampaign.hidden = NO;
                [self largestSentCampaignSpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                largestSentCampaignDecena.hidden = NO;
                [self largestSentCampaignSpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                largestSentCampaignCentena.hidden = NO;
                [self largestSentCampaignSpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                largestSentCampaignUnidadDeMil.hidden = NO;
                [self largestSentCampaignSpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                LargestSentCampaignFisrtColon.hidden = NO;

            }
        
            if(index == 4){ //decena de mil
                largestSentCampaignDecenaDeMil.hidden = NO;
                [self largestSentCampaignSpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
                
            }
            if(index == 5){ //centena de mil
                largestSentCampaignCentenaDeMil.hidden = NO;
                [self largestSentCampaignSpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
            }
            if(index == 6){ //unidad de millon
                largestSentCampaignUnidadDeMillon.hidden = NO;
                [self largestSentCampaignSpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
                largestSentCampaignSecondColon.hidden = NO;
            }
            if(index == 7){ //unidad de millon
                largestSentCampaignDecenaDeMillon.hidden = NO;
                [self largestSentCampaignSpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
            }
            
            //        if(index == 4){ // centena de mil
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 5){ // unidad de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 6){ // decena de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 7){ // centena de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
        } 
    //}
}
-(void)calculateEmailsSentSinceStartUpForAnimation{
    
}
-(void)calculateCampaingsSentSinceStartUpForAnimation{
    
}
-(void)calculateEmailsSentTodayForAnimation{
    
}
-(void)calculateCampaingSentTodayForAnimation{
    
}

-(void)calculateDaysSinceStartUpForAnimation{
    NSString *contador = @"132";
    if([contador intValue] != daysSinceStartUpValue ){ // do something is the number are differents !!
        //daysSinceStartUpValue = [contador intValue];
        for (int index = 0; index < [contador length]; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                unidad.hidden = NO;
                [self spinUnidad: 1 number:[contador characterAtIndex:[contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ //decena
                decena.hidden = NO;
                [self spinDecena: 1 number:[contador characterAtIndex:[contador length]-2]-48 totalCiclos:2];
            }
            if(index == 2){ // centena
                centena.hidden = NO;
                [self spinCentena:1 number:[contador characterAtIndex:[contador length]-3]-48];
            }
            //        if(index == 2){ // unidad de mil
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 3){ // decena de mil
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 4){ // centena de mil
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 5){ // unidad de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 6){ // decena de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
            //        if(index == 7){ // centena de millon
            //            [self spinCentena:1 number:[contador characterAtIndex:index]-48];
            //        }
        } 
        
//        NSLog(@"%@",[NSNumber numberWithInt:[contador length]]);
//        //NSLog(@"%@ lalala", [contador length]);
//        NSLog(@"%@",self.emailCount);
//        double decCount = [self.emailCount intValue] / 10;
//        int decResto = [self.emailCount intValue] % 10;
//        if(decCount > 9){ // el numero es tan grande como una centena
//            double cenCount = decResto / 10;
//            double cenResto = decResto % 10;
//        }
    }      
}

- (IBAction)spinButton:(id)sender {
    //[self calculateDaysSinceStartUpForAnimation];
    [self calculateLargestSentCampaignForAnimation];
    
    

}

- (void)runScheduledTask {
    NSLog(@"TIMER");
   }

// spin Unidad since start up

- (void) spinUnidad: (int) rotations 
             number: (int) num
        totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: unidad
                      duration: SPIN_DURATION /4
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            uni0.hidden = NO;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==1){
                            uni0.hidden = YES;
                            uni1.hidden = NO;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==2){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = NO;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==3){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = NO;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==4){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = NO;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==5){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = NO;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==6){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = NO;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==7){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = NO;
                            
                            uni8.hidden = YES;
                            uni9.hidden = YES;
                        }else if (num==8){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = NO;
                            uni9.hidden = YES;
                        }else if (num==9){
                            uni0.hidden = YES;
                            uni1.hidden = YES;
                            uni2.hidden = YES;
                            uni3.hidden = YES;
                            uni4.hidden = YES;
                            uni5.hidden = YES;
                            uni6.hidden = YES;
                            uni7.hidden = YES;
                            
                            uni8.hidden = YES;
                            uni9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self spinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                        
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



//spin decena Days Since start Up

- (void) spinDecena: (int) rotations 
             number: (int) num
        totalCiclos: (int) totalCiclos
{

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

//
//Spin centena Days Since start Up

- (void) spinCentena: (int) rotations 
              number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: centena
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            cen0.hidden = NO;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==1){
                            cen0.hidden = YES;
                            cen1.hidden = NO;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==2){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = NO;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==3){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = NO;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==4){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = NO;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==5){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = NO;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==6){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = NO;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==7){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = NO;
                            cen8.hidden = YES;
                            cen9.hidden = YES;
                        }else if (num==8){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = NO;
                            cen9.hidden = YES;
                        }else if (num==9){
                            cen0.hidden = YES;
                            cen1.hidden = YES;
                            cen2.hidden = YES;
                            cen3.hidden = YES;
                            cen4.hidden = YES;
                            cen5.hidden = YES;
                            cen6.hidden = YES;
                            cen7.hidden = YES;
                            cen8.hidden = YES;
                            cen9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self spinCentena:rotations + 1 number:rotations];
                        
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


// Largest sent campaing spin unidad

- (void) largestSentCampaignSpinUnidad: (int) rotations 
             number: (int) num
        totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: largestSentCampaign
                      duration: SPIN_DURATION /4
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignUnidad0.hidden = NO;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = NO;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = NO;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = NO;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = NO;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = NO;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = NO;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = NO;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = NO;
                            largestSentCampaignUnidad9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignUnidad0.hidden = YES;
                            largestSentCampaignUnidad1.hidden = YES;
                            largestSentCampaignUnidad2.hidden = YES;
                            largestSentCampaignUnidad3.hidden = YES;
                            largestSentCampaignUnidad4.hidden = YES;
                            largestSentCampaignUnidad5.hidden = YES;
                            largestSentCampaignUnidad6.hidden = YES;
                            largestSentCampaignUnidad7.hidden = YES;
                            largestSentCampaignUnidad8.hidden = YES;
                            largestSentCampaignUnidad9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                        
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


- (void) largestSentCampaignSpinDecena: (int) rotations 
              number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: largestSentCampaignDecena
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignDec0.hidden = NO;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = NO;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = NO;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = NO;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = NO;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = NO;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = NO;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = NO;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = NO;
                            largestSentCampaignDec9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignDec0.hidden = YES;
                            largestSentCampaignDec1.hidden = YES;
                            largestSentCampaignDec2.hidden = YES;
                            largestSentCampaignDec3.hidden = YES;
                            largestSentCampaignDec4.hidden = YES;
                            largestSentCampaignDec5.hidden = YES;
                            largestSentCampaignDec6.hidden = YES;
                            largestSentCampaignDec7.hidden = YES;
                            largestSentCampaignDec8.hidden = YES;
                            largestSentCampaignDec9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinDecena:rotations + 1 number:rotations];
                        
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


- (void) largestSentCampaignSpinCentena: (int) rotations 
                                number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: largestSentCampaignCentena
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignCen0.hidden = NO;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = NO;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = NO;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = NO;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = NO;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = NO;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = NO;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = NO;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = NO;
                            largestSentCampaignCen9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignCen0.hidden = YES;
                            largestSentCampaignCen1.hidden = YES;
                            largestSentCampaignCen2.hidden = YES;
                            largestSentCampaignCen3.hidden = YES;
                            largestSentCampaignCen4.hidden = YES;
                            largestSentCampaignCen5.hidden = YES;
                            largestSentCampaignCen6.hidden = YES;
                            largestSentCampaignCen7.hidden = YES;
                            largestSentCampaignCen8.hidden = YES;
                            largestSentCampaignCen9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinCentena:rotations + 1 number:rotations];
                        
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

- (void) largestSentCampaignSpinUnidadDeMil: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: largestSentCampaignUnidadDeMil
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignUnidadDeMil0.hidden = NO;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = NO;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = NO;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = NO;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = NO;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = NO;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = NO;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = NO;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = NO;
                            largestSentCampaignUnidadDeMil9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignUnidadDeMil0.hidden = YES;
                            largestSentCampaignUnidadDeMil1.hidden = YES;
                            largestSentCampaignUnidadDeMil2.hidden = YES;
                            largestSentCampaignUnidadDeMil3.hidden = YES;
                            largestSentCampaignUnidadDeMil4.hidden = YES;
                            largestSentCampaignUnidadDeMil5.hidden = YES;
                            largestSentCampaignUnidadDeMil6.hidden = YES;
                            largestSentCampaignUnidadDeMil7.hidden = YES;
                            largestSentCampaignUnidadDeMil8.hidden = YES;
                            largestSentCampaignUnidadDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinUnidadDeMil:rotations + 1 number:rotations];
                        
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

- (void) largestSentCampaignSpinDecenaDeMil: (int) rotations 
                                     number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: largestSentCampaignDecenaDeMil
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignDecenaDeMil0.hidden = NO;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = NO;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = NO;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = NO;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = NO;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = NO;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = NO;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = NO;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = NO;
                            largestSentCampaignDecenaDeMil9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignDecenaDeMil0.hidden = YES;
                            largestSentCampaignDecenaDeMil1.hidden = YES;
                            largestSentCampaignDecenaDeMil2.hidden = YES;
                            largestSentCampaignDecenaDeMil3.hidden = YES;
                            largestSentCampaignDecenaDeMil4.hidden = YES;
                            largestSentCampaignDecenaDeMil5.hidden = YES;
                            largestSentCampaignDecenaDeMil6.hidden = YES;
                            largestSentCampaignDecenaDeMil7.hidden = YES;
                            largestSentCampaignDecenaDeMil8.hidden = YES;
                            largestSentCampaignDecenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinCentena:rotations + 1 number:rotations];
                        
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

- (void) largestSentCampaignSpinCentenaDeMil: (int) rotations 
                                     number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: largestSentCampaignCentenaDeMil
                      duration: SPIN_DURATION /2
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            largestSentCampaignCentenaDeMil0.hidden = NO;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==1){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = NO;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==2){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = NO;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==3){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = NO;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==4){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = NO;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==5){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = NO;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==6){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = NO;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==7){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = NO;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==8){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = NO;
                            largestSentCampaignCentenaDeMil9.hidden = YES;
                        }else if (num==9){
                            largestSentCampaignCentenaDeMil0.hidden = YES;
                            largestSentCampaignCentenaDeMil1.hidden = YES;
                            largestSentCampaignCentenaDeMil2.hidden = YES;
                            largestSentCampaignCentenaDeMil3.hidden = YES;
                            largestSentCampaignCentenaDeMil4.hidden = YES;
                            largestSentCampaignCentenaDeMil5.hidden = YES;
                            largestSentCampaignCentenaDeMil6.hidden = YES;
                            largestSentCampaignCentenaDeMil7.hidden = YES;
                            largestSentCampaignCentenaDeMil8.hidden = YES;
                            largestSentCampaignCentenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self largestSentCampaignSpinCentenaDeMil:rotations + 1 number:rotations];
                        
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




- (void) largestSentCampaignSpinUnidadDeMillon: (int) rotations 
number: (int) num
{
if (rotations == 2) return;

[UIView transitionWithView: largestSentCampaignUnidadDeMillon
                  duration: SPIN_DURATION /2
                   options:  UIViewAnimationOptionTransitionFlipFromRight
                animations: ^{
                    if(num==0){
                        largestSentCampaignUnidadDeMillon0.hidden = NO;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==1){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = NO;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==2){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = NO;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==3){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = NO;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==4){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = NO;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==5){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = NO;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==6){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = NO;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==7){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = NO;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==8){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = NO;
                        largestSentCampaignUnidadDeMillon9.hidden = YES;
                    }else if (num==9){
                        largestSentCampaignUnidadDeMillon0.hidden = YES;
                        largestSentCampaignUnidadDeMillon1.hidden = YES;
                        largestSentCampaignUnidadDeMillon2.hidden = YES;
                        largestSentCampaignUnidadDeMillon3.hidden = YES;
                        largestSentCampaignUnidadDeMillon4.hidden = YES;
                        largestSentCampaignUnidadDeMillon5.hidden = YES;
                        largestSentCampaignUnidadDeMillon6.hidden = YES;
                        largestSentCampaignUnidadDeMillon7.hidden = YES;
                        largestSentCampaignUnidadDeMillon8.hidden = YES;
                        largestSentCampaignUnidadDeMillon9.hidden = NO;
                    }
                }
                completion: ^(BOOL finished) {
                    
                    [self largestSentCampaignSpinUnidadDeMillon:rotations + 1 number:rotations];
                    
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



- (void) largestSentCampaignSpinDecenaDeMillon: (int) rotations 
number: (int) num
{
if (rotations == 2) return;

[UIView transitionWithView: largestSentCampaignDecenaDeMillon
                  duration: SPIN_DURATION /2
                   options:  UIViewAnimationOptionTransitionFlipFromRight
                animations: ^{
                    if(num==0){
                        largestSentCampaignDecenaDeMillon0.hidden = NO;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==1){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = NO;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==2){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = NO;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==3){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = NO;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==4){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = NO;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==5){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = NO;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==6){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = NO;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==7){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = NO;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==8){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = NO;
                        largestSentCampaignDecenaDeMillon9.hidden = YES;
                    }else if (num==9){
                        largestSentCampaignDecenaDeMillon0.hidden = YES;
                        largestSentCampaignDecenaDeMillon1.hidden = YES;
                        largestSentCampaignDecenaDeMillon2.hidden = YES;
                        largestSentCampaignDecenaDeMillon3.hidden = YES;
                        largestSentCampaignDecenaDeMillon4.hidden = YES;
                        largestSentCampaignDecenaDeMillon5.hidden = YES;
                        largestSentCampaignDecenaDeMillon6.hidden = YES;
                        largestSentCampaignDecenaDeMillon7.hidden = YES;
                        largestSentCampaignDecenaDeMillon8.hidden = YES;
                        largestSentCampaignDecenaDeMillon9.hidden = NO;
                    }
                }
                completion: ^(BOOL finished) {
                    
                    [self largestSentCampaignSpinDecenaDeMillon:rotations + 1 number:rotations];
                    
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
