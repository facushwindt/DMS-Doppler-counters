//
//  DopplerCounterViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 06/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DopplerCounterViewController.h"
#import "CounterRequest.h"

#define SPIN_DURATION 2.0f
#define SPIN_DURATION_UNIDAD 0.5f //1.0f
#define SPIN_DURATION_DECENA 0.75f
#define SPIN_DURATION_CENTENA 1.0f
#define SPIN_DURATION_UNIDAD_DE_MIL 1.25f
#define SPIN_DURATION_DECENA_DE_MIL 1.5f
#define SPIN_DURATION_CENTENA_DE_MIL 1.75f
#define SPIN_DURATION_UNIDAD_DE_MILLON 2.0f
#define SPIN_DURATION_DECENA_DE_MILLON 2.25f

int largestSentCampaignValue =-1111111;
int daysSinceStartUpValue =-1111111;
int historyEmailsSentValue =-1111111;
int historyCampaignsSentValue =-1111111;
int emailsSentTodayValue = -1111111;
int campaingsSentTodayValue =-1111111;

@interface DopplerCounterViewController ()

@end

@implementation DopplerCounterViewController
@synthesize emailsSentTodayUnidadDeMillon;
@synthesize emailsSentTodayUnidadDeMillon0;
@synthesize emailsSentTodayUnidadDeMillon1;
@synthesize emailsSentTodayUnidadDeMillon2;
@synthesize emailsSentTodayUnidadDeMillon3;
@synthesize emailsSentTodayUnidadDeMillon4;
@synthesize emailsSentTodayUnidadDeMillon5;
@synthesize emailsSentTodayUnidadDeMillon6;
@synthesize emailsSentTodayUnidadDeMillon7;
@synthesize emailsSentTodayUnidadDeMillon8;
@synthesize emailsSentTodayUnidadDeMillon9;
@synthesize emailsSentTodayCentenaDeMil;
@synthesize emailsSentTodayCentenaDeMil0;
@synthesize emailsSentTodayCentenaDeMil1;
@synthesize emailsSentTodayCentenaDeMil2;
@synthesize emailsSentTodayCentenaDeMil3;
@synthesize emailsSentTodayCentenaDeMil4;
@synthesize emailsSentTodayCentenaDeMil5;
@synthesize emailsSentTodayCentenaDeMil6;
@synthesize emailsSentTodayCentenaDeMil7;
@synthesize emailsSentTodayCentenaDeMil8;
@synthesize emailsSentTodayCentenaDeMil9;
@synthesize emailsSentTodayDecenaDeMil;
@synthesize emailsSentTodayDecenaDeMil0;
@synthesize emailsSentTodayDecenaDeMil1;
@synthesize emailsSentTodayDecenaDeMil2;
@synthesize emailsSentTodayDecenaDeMil3;
@synthesize emailsSentTodayDecenaDeMil4;
@synthesize emailsSentTodayDecenaDeMil5;
@synthesize emailsSentTodayDecenaDeMil6;
@synthesize emailsSentTodayDecenaDeMil7;
@synthesize emailsSentTodayDecenaDeMil8;
@synthesize emailsSentTodayDecenaDeMil9;
@synthesize emailsSentTodayUnidadDeMil;
@synthesize emailsSentTodayUnidadDeMil0;
@synthesize emailsSentTodayUnidadDeMil1;
@synthesize emailsSentTodayUnidadDeMil2;
@synthesize emailsSentTodayUnidadDeMil3;
@synthesize emailsSentTodayUnidadDeMil4;
@synthesize emailsSentTodayUnidadDeMil5;
@synthesize emailsSentTodayUnidadDeMil6;
@synthesize emailsSentTodayUnidadDeMil7;
@synthesize emailsSentTodayUnidadDeMil8;
@synthesize emailsSentTodayUnidadDeMil9;
@synthesize emailsSentTodayCentena;
@synthesize emailsSentTodayCentena0;
@synthesize emailsSentTodayCentena1;
@synthesize emailsSentTodayCentena2;
@synthesize emailsSentTodayCentena3;
@synthesize emailsSentTodayCentena4;
@synthesize emailsSentTodayCentena5;
@synthesize emailsSentTodayCentena6;
@synthesize emailsSentTodayCentena7;
@synthesize emailsSentTodayCentena8;
@synthesize emailsSentTodayCentena9;
@synthesize emailsSentTodayDecena;
@synthesize emailsSentTodayDecena0;
@synthesize emailsSentTodayDecena1;
@synthesize emailsSentTodayDecena2;
@synthesize emailsSentTodayDecena3;
@synthesize emailsSentTodayDecena4;
@synthesize emailsSentTodayDecena5;
@synthesize emailsSentTodayDecena6;
@synthesize emailsSentTodayDecena7;
@synthesize emailsSentTodayDecena8;
@synthesize emailsSentTodayDecena9;

@synthesize countersPopUpView = _countersPopUpView;
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
@synthesize EmailsSentTodayUnidad;
@synthesize emailsSentTodayUnidad0;
@synthesize emailsSentTodayUnidad1;
@synthesize emailsSentTodayUnidad2;
@synthesize emailsSentTodayUnidad3;
@synthesize emailsSentTodayUnidad4;
@synthesize emailsSentTodayUnidad5;
@synthesize emailsSentTodayUnidad6;
@synthesize emailsSentTodayUnidad7;
@synthesize emailsSentTodayUnidad8;
@synthesize emailsSentTodayUnidad9;
@synthesize emailsSentTodayDecenaDeMillon;
@synthesize emailsSentTodayDecenaDeMillon0;
@synthesize emailsSentTodayDecenaDeMillon1;
@synthesize emailsSentTodayDecenaDeMillon2;
@synthesize emailsSentTodayDecenaDeMillon3;
@synthesize emailsSentTodayDecenaDeMillon4;
@synthesize emailsSentTodayDecenaDeMillon5;
@synthesize emailsSentTodayDecenaDeMillon6;
@synthesize emailsSentTodayDecenaDeMillon7;
@synthesize emailsSentTodayDecenaDeMillon8;
@synthesize emailsSentTodayDecenaDeMillon9;
@synthesize emailsSentTodayFisrtColon;
@synthesize emailsSentTodaySecondColon;
@synthesize campaingsSentTodayUnidad;
@synthesize campaingsSentTodayUnidad0;
@synthesize campaingsSentTodayUnidad1;
@synthesize campaingsSentTodayUnidad2;
@synthesize campaingsSentTodayUnidad3;
@synthesize campaingsSentTodayUnidad4;
@synthesize campaingsSentTodayUnidad5;
@synthesize campaingsSentTodayUnidad6;
@synthesize campaingsSentTodayUnidad7;
@synthesize campaingsSentTodayUnidad8;
@synthesize campaingsSentTodayUnidad9;
@synthesize campaingsSentTodayDecena;
@synthesize campaingsSentTodayDecena0;
@synthesize campaingsSentTodayDecena1;
@synthesize campaingsSentTodayDecena2;
@synthesize campaingsSentTodayDecena3;
@synthesize campaingsSentTodayDecena4;
@synthesize campaingsSentTodayDecena5;
@synthesize campaingsSentTodayDecena6;
@synthesize campaingsSentTodayDecena7;
@synthesize campaingsSentTodayDecena8;
@synthesize campaingsSentTodayDecena9;
@synthesize campaingsSentTodayCentena;
@synthesize campaingsSentTodayCentena0;
@synthesize campaingsSentTodayCentena1;
@synthesize campaingsSentTodayCentena2;
@synthesize campaingsSentTodayCentena3;
@synthesize campaingsSentTodayCentena4;
@synthesize campaingsSentTodayCentena5;
@synthesize campaingsSentTodayCentena6;
@synthesize campaingsSentTodayCentena7;
@synthesize campaingsSentTodayCentena8;
@synthesize campaingsSentTodayCentena9;
@synthesize campaingsSentTodayUnidadDeMil;
@synthesize campaingsSentTodayUnidadDeMil0;
@synthesize campaingsSentTodayUnidadDeMil1;
@synthesize campaingsSentTodayUnidadDeMil2;
@synthesize campaingsSentTodayUnidadDeMil3;
@synthesize campaingsSentTodayUnidadDeMil4;
@synthesize campaingsSentTodayUnidadDeMil5;
@synthesize campaingsSentTodayUnidadDeMil6;
@synthesize campaingsSentTodayUnidadDeMil7;
@synthesize campaingsSentTodayUnidadDeMil8;
@synthesize campaingsSentTodayUnidadDeMil9;
@synthesize campaingsSentTodayDecenaDeMil;
@synthesize campaingsSentTodayDecenaDeMil0;
@synthesize campaingsSentTodayDecenaDeMil1;
@synthesize campaingsSentTodayDecenaDeMil2;
@synthesize campaingsSentTodayDecenaDeMil3;
@synthesize campaingsSentTodayDecenaDeMil4;
@synthesize campaingsSentTodayDecenaDeMil5;
@synthesize campaingsSentTodayDecenaDeMil6;
@synthesize campaingsSentTodayDecenaDeMil7;
@synthesize campaingsSentTodayDecenaDeMil8;
@synthesize campaingsSentTodayDecenaDeMil9;
@synthesize campaingsSentTodayFirstColon;
@synthesize historyEmailsSentUnidad;
@synthesize historyEmailsSentUnidad0;
@synthesize historyEmailsSentUnidad1;
@synthesize historyEmailsSentUnidad2;
@synthesize historyEmailsSentUnidad3;
@synthesize historyEmailsSentUnidad4;
@synthesize historyEmailsSentUnidad5;
@synthesize historyEmailsSentUnidad6;
@synthesize historyEmailsSentUnidad7;
@synthesize historyEmailsSentUnidad8;
@synthesize historyEmailsSentUnidad9;
@synthesize historyEmailsSentDecena;
@synthesize historyEmailsSentDecena0;
@synthesize historyEmailsSentDecena1;
@synthesize historyEmailsSentDecena2;
@synthesize historyEmailsSentDecena3;
@synthesize historyEmailsSentDecena4;
@synthesize historyEmailsSentDecena5;
@synthesize historyEmailsSentDecena6;
@synthesize historyEmailsSentDecena7;
@synthesize historyEmailsSentDecena8;
@synthesize historyEmailsSentDecena9;
@synthesize historyEmailsSentCentena;
@synthesize historyEmailsSentCentena0;
@synthesize historyEmailsSentCentena1;
@synthesize historyEmailsSentCentena2;
@synthesize historyEmailsSentCentena3;
@synthesize historyEmailsSentCentena4;
@synthesize historyEmailsSentCentena5;
@synthesize historyEmailsSentCentena6;
@synthesize historyEmailsSentCentena7;
@synthesize historyEmailsSentCentena8;
@synthesize historyEmailsSentCentena9;
@synthesize historyEmailsSentUnidadDeMil;
@synthesize historyEmailsSentUnidadDeMil0;
@synthesize historyEmailsSentUnidadDeMil1;
@synthesize historyEmailsSentUnidadDeMil2;
@synthesize historyEmailsSentUnidadDeMil3;
@synthesize historyEmailsSentUnidadDeMil4;
@synthesize historyEmailsSentUnidadDeMil5;
@synthesize historyEmailsSentUnidadDeMil6;
@synthesize historyEmailsSentUnidadDeMil7;
@synthesize historyEmailsSentUnidadDeMil8;
@synthesize historyEmailsSentUnidadDeMil9;
@synthesize historyEmailsSentDecenaDeMil;
@synthesize historyEmailsSentDecenaDeMil0;
@synthesize historyEmailsSentDecenaDeMil1;
@synthesize historyEmailsSentDecenaDeMil2;
@synthesize historyEmailsSentDecenaDeMil3;
@synthesize historyEmailsSentDecenaDeMil4;
@synthesize historyEmailsSentDecenaDeMil5;
@synthesize historyEmailsSentDecenaDeMil6;
@synthesize historyEmailsSentDecenaDeMil7;
@synthesize historyEmailsSentDecenaDeMil8;
@synthesize historyEmailsSentDecenaDeMil9;
@synthesize historyEmailsSentCentenaDeMil;
@synthesize historyEmailsSentCentenaDeMil0;
@synthesize historyEmailsSentCentenaDeMil1;
@synthesize historyEmailsSentCentenaDeMil2;
@synthesize historyEmailsSentCentenaDeMil3;
@synthesize historyEmailsSentCentenaDeMil4;
@synthesize historyEmailsSentCentenaDeMil5;
@synthesize historyEmailsSentCentenaDeMil6;
@synthesize historyEmailsSentCentenaDeMil7;
@synthesize historyEmailsSentCentenaDeMil8;
@synthesize historyEmailsSentCentenaDeMil9;
@synthesize historyEmailsSentUnidadDeMillon;
@synthesize historyEmailsSentUnidadDeMillon0;
@synthesize historyEmailsSentUnidadDeMillon1;
@synthesize historyEmailsSentUnidadDeMillon2;
@synthesize historyEmailsSentUnidadDeMillon3;
@synthesize historyEmailsSentUnidadDeMillon4;
@synthesize historyEmailsSentUnidadDeMillon5;
@synthesize historyEmailsSentUnidadDeMillon6;
@synthesize historyEmailsSentUnidadDeMillon7;
@synthesize historyEmailsSentUnidadDeMillon8;
@synthesize historyEmailsSentUnidadDeMillon9;
@synthesize historyEmailsSentDecenaDeMillon;
@synthesize historyEmailsSentDecenaDeMillon0;
@synthesize historyEmailsSentDecenaDeMillon1;
@synthesize historyEmailsSentDecenaDeMillon2;
@synthesize historyEmailsSentDecenaDeMillon3;
@synthesize historyEmailsSentDecenaDeMillon4;
@synthesize historyEmailsSentDecenaDeMillon5;
@synthesize historyEmailsSentDecenaDeMillon6;
@synthesize historyEmailsSentDecenaDeMillon7;
@synthesize historyEmailsSentDecenaDeMillon8;
@synthesize historyEmailsSentDecenaDeMillon9;
@synthesize historyEmailsSentFirstColon;
@synthesize historyEmailsSentSecondColon;
@synthesize historyCampaingsSentUnidad;
@synthesize historyCampaingsSentUnidad0;
@synthesize historyCampaingsSentUnidad1;
@synthesize historyCampaingsSentUnidad2;
@synthesize historyCampaingsSentUnidad3;
@synthesize historyCampaingsSentUnidad4;
@synthesize historyCampaingsSentUnidad5;
@synthesize historyCampaingsSentUnidad6;
@synthesize historyCampaingsSentUnidad7;
@synthesize historyCampaingsSentUnidad8;
@synthesize historyCampaingsSentUnidad9;
@synthesize historyCampaingsSentDecena;
@synthesize historyCampaingsSentDecena0;
@synthesize historyCampaingsSentDecena1;
@synthesize historyCampaingsSentDecena2;
@synthesize historyCampaingsSentDecena3;
@synthesize historyCampaingsSentDecena4;
@synthesize historyCampaingsSentDecena5;
@synthesize historyCampaingsSentDecena6;
@synthesize historyCampaingsSentDecena7;
@synthesize historyCampaingsSentDecena8;
@synthesize historyCampaingsSentDecena9;
@synthesize historyCampaingsSentCentena;
@synthesize historyCampaingsSentCentena0;
@synthesize historyCampaingsSentCentena1;
@synthesize historyCampaingsSentCentena2;
@synthesize historyCampaingsSentCentena3;
@synthesize historyCampaingsSentCentena4;
@synthesize historyCampaingsSentCentena5;
@synthesize historyCampaingsSentCentena6;
@synthesize historyCampaingsSentCentena7;
@synthesize historyCampaingsSentCentena8;
@synthesize historyCampaingsSentCentena9;
@synthesize historyCampaingsSentUnidadDeMil;
@synthesize historyCampaingsSentUnidadDeMil0;
@synthesize historyCampaingsSentUnidadDeMil1;
@synthesize historyCampaingsSentUnidadDeMil2;
@synthesize historyCampaingsSentUnidadDeMil3;
@synthesize historyCampaingsSentUnidadDeMil4;
@synthesize historyCampaingsSentUnidadDeMil5;
@synthesize historyCampaingsSentUnidadDeMil6;
@synthesize historyCampaingsSentUnidadDeMil7;
@synthesize historyCampaingsSentUnidadDeMil8;
@synthesize historyCampaingsSentUnidadDeMil9;
@synthesize historyCampaingsSentDecenaDeMil;
@synthesize historyCampaingsSentDecenaDeMil0;
@synthesize historyCampaingsSentDecenaDeMil1;
@synthesize historyCampaingsSentDecenaDeMil2;
@synthesize historyCampaingsSentDecenaDeMil3;
@synthesize historyCampaingsSentDecenaDeMil4;
@synthesize historyCampaingsSentDecenaDeMil5;
@synthesize historyCampaingsSentDecenaDeMil6;
@synthesize historyCampaingsSentDecenaDeMil7;
@synthesize historyCampaingsSentDecenaDeMil8;
@synthesize historyCampaingsSentDecenaDeMil9;
@synthesize historyCampaingsSentCentenaDeMil;
@synthesize historyCampaingsSentCentenaDeMil0;
@synthesize historyCampaingsSentCentenaDeMil1;
@synthesize historyCampaingsSentCentenaDeMil2;
@synthesize historyCampaingsSentCentenaDeMil3;
@synthesize historyCampaingsSentCentenaDeMil4;
@synthesize historyCampaingsSentCentenaDeMil5;
@synthesize historyCampaingsSentCentenaDeMil6;
@synthesize historyCampaingsSentCentenaDeMil7;
@synthesize historyCampaingsSentCentenaDeMil8;
@synthesize historyCampaingsSentCentenaDeMil9;
@synthesize historyCampaingsSentUnidadDeMillon;
@synthesize historyCampaingsSentUnidadDeMillon0;
@synthesize historyCampaingsSentUnidadDeMillon1;
@synthesize historyCampaingsSentUnidadDeMillon2;
@synthesize historyCampaingsSentUnidadDeMillon3;
@synthesize historyCampaingsSentUnidadDeMillon4;
@synthesize historyCampaingsSentUnidadDeMillon5;
@synthesize historyCampaingsSentUnidadDeMillon6;
@synthesize historyCampaingsSentUnidadDeMillon7;
@synthesize historyCampaingsSentUnidadDeMillon8;
@synthesize historyCampaingsSentUnidadDeMillon9;
@synthesize historyCampaingsSentDecenaDeMillon7;
@synthesize historyCampaingsSentDecenaDeMillon8;
@synthesize historyCampaingsSentDecenaDeMillon9;
@synthesize historyCampaingsSentDecenaDeMillon;
@synthesize historyCampaingsSentDecenaDeMillon0;
@synthesize historyCampaingsSentDecenaDeMillon1;
@synthesize historyCampaingsSentDecenaDeMillon2;
@synthesize historyCampaingsSentDecenaDeMillon3;
@synthesize historyCampaingsSentDecenaDeMillon4;
@synthesize historyCampaingsSentDecenaDeMillon5;
@synthesize historyCampaingsSentDecenaDeMillon6;
@synthesize largestSentCampaignDecenaDeMillon3;
@synthesize largestSentCampaignDecenaDeMillon4;
@synthesize largestSentCampaignDecenaDeMillon5;
@synthesize largestSentCampaignDecenaDeMillon6;
@synthesize largestSentCampaignDecenaDeMillon7;
@synthesize largestSentCampaignDecenaDeMillon8;
@synthesize largestSentCampaignDecenaDeMillon9;
@synthesize historyCampaignsSentFirstColon;
@synthesize historyCampaignsSentSecondColon;
@synthesize aTimer = _aTimer;


- (IBAction)swipeUp:(id)sender {
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:^{
                         
                         //bring searchView up
                         self.countersPopUpView.transform = CGAffineTransformMakeTranslation(0, -180);
                         [self.view bringSubviewToFront:self.countersPopUpView];
                         
                     }
                     completion:^(BOOL finished){
                     }
     ];

}

- (IBAction)swipeDown:(id)sender {
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:^{
                         
                         //bring searchView up
                         self.countersPopUpView.transform = CGAffineTransformMakeTranslation(0, +1500);
                         
                     }
                     completion:^(BOOL finished){
                     }
     ];
 }

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
    
    EmailsSentTodayUnidad.hidden = YES;
    emailsSentTodayDecena.hidden = YES;
    emailsSentTodayCentena.hidden = YES;
    emailsSentTodayFisrtColon.hidden = YES;
    emailsSentTodayUnidadDeMil.hidden = YES;
    emailsSentTodayDecenaDeMil.hidden = YES;
    emailsSentTodaySecondColon.hidden = YES;
    emailsSentTodayCentenaDeMil.hidden = YES;
    emailsSentTodayUnidadDeMillon.hidden = YES;
    emailsSentTodayDecenaDeMillon.hidden = YES;
    
    campaingsSentTodayUnidad.hidden = YES;
    campaingsSentTodayDecena.hidden = YES;
    campaingsSentTodayCentena.hidden = YES;
    campaingsSentTodayFirstColon.hidden = YES;
    campaingsSentTodayUnidadDeMil.hidden = YES;
    campaingsSentTodayDecenaDeMil.hidden = YES;
//    campaingsSentTodaySecondColon.hidden = YES;
//    campaingsSentTodayCentenaDeMil.hidden = YES;
//    campaingsSentTodayUnidadDeMillon.hidden = YES;
//    campaingsSentTodayDecenaDeMillon.hidden = YES;
    
    historyEmailsSentUnidad.hidden = YES;
    historyEmailsSentDecena.hidden = YES;
    historyEmailsSentCentena.hidden = YES;
    historyEmailsSentFirstColon.hidden = YES;
    historyEmailsSentUnidadDeMil.hidden = YES;
    historyEmailsSentDecenaDeMil.hidden = YES;
    historyEmailsSentSecondColon.hidden = YES;
    historyEmailsSentCentenaDeMil.hidden = YES;
    historyEmailsSentUnidadDeMillon.hidden = YES;
    historyEmailsSentDecenaDeMillon.hidden = YES;
    
    historyCampaingsSentUnidad.hidden = YES;
    historyCampaingsSentDecena.hidden = YES;
    historyCampaingsSentCentena.hidden = YES;
    historyCampaignsSentFirstColon.hidden = YES;
    historyCampaingsSentUnidadDeMil.hidden = YES;
    historyCampaingsSentDecenaDeMil.hidden = YES;
    historyCampaignsSentSecondColon.hidden = YES;
    historyCampaingsSentCentenaDeMil.hidden = YES;
    historyCampaingsSentUnidadDeMillon.hidden = YES;
    historyCampaingsSentDecenaDeMillon.hidden = YES;
    
    self.aTimer = [NSTimer scheduledTimerWithTimeInterval:4.0 
                                                   target:self 
                                                 selector:@selector(madeRequestByTimer)
                                                 //selector:@selector(calculateDaysSinceStartUpForAnimation)
                                                 userInfo:nil 
                                                  repeats:YES];
    daysSinceStartUpValue = -11111111; // aca debe levantar el ultimo valor de user default
    largestSentCampaignValue =-11111111;
    historyEmailsSentValue =-11111111;
    historyCampaignsSentValue =-11111111;
    emailsSentTodayValue = -11111111;
    campaingsSentTodayValue =-11111111;
    
}
-(void)madeRequestByTimer{
    [CounterRequest start];
    [self calculateDaysSinceStartUpForAnimation];
    [self calculateLargestSentCampaignForAnimation]; 
    [self calculateEmailsSentTodayForAnimation];
    [self calculateCampaingSentTodayForAnimation];
    [self calculateHistoryEmailsSentForAnimation];
    [self calculateHistoryCampaingsSentForAnimation];
}

//TIP2 ... UNCOMMET BELOW CODE TO TEST TIMERS ... DROP BUTTON TO STORYBOARD AND CONNECT

//- (IBAction)stopTimer:(id)sender {
//    [self.aTimer invalidate];
//    self.aTimer = nil;
//}
//- (IBAction)start:(id)sender {
//    if(!self.aTimer){
//        self.aTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 
//                                                       target:self 
//                                                     selector:@selector(calculateDaysSinceStartUpForAnimation) 
//                                                     userInfo:nil 
//                                                      repeats:YES];
//    }
//}



//TIP3 ... UNCOMMET BELOW CODE TO TEST ANIMATION ... DROP BUTTON TO STORYBOARD AND CONNECT (REQUEST!)

//- (IBAction)requestButton:(id)sender {
//    [self calculateDaysSinceStartUpForAnimation];
//    [self calculateLargestSentCampaignForAnimation]; 
//    [self calculateEmailsSentTodayForAnimation];
//    [self calculateCampaingSentTodayForAnimation];
//    [self calculateHistoryEmailsSentForAnimation];
//    [self calculateHistoryCampaingsSentForAnimation];
//}



-(void)viewWillDisappear:(BOOL)animated{
    [self.aTimer invalidate];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
    
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewA"]];
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewB"]];
	[self addChildViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"ViewC"]];
 
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
    [self setCountersPopUpView:nil];
    [self setEmailsSentTodayUnidad:nil];
    [self setEmailsSentTodayUnidad0:nil];
    [self setEmailsSentTodayUnidad1:nil];
    [self setEmailsSentTodayUnidad2:nil];
    [self setEmailsSentTodayUnidad3:nil];
    [self setEmailsSentTodayUnidad4:nil];
    [self setEmailsSentTodayUnidad5:nil];
    [self setEmailsSentTodayUnidad6:nil];
    [self setEmailsSentTodayUnidad7:nil];
    [self setEmailsSentTodayUnidad8:nil];
    [self setEmailsSentTodayUnidad9:nil];
    [self setEmailsSentTodayDecena:nil];
    [self setEmailsSentTodayDecena0:nil];
    [self setEmailsSentTodayDecena1:nil];
    [self setEmailsSentTodayDecena2:nil];
    [self setEmailsSentTodayDecena3:nil];
    [self setEmailsSentTodayDecena4:nil];
    [self setEmailsSentTodayDecena5:nil];
    [self setEmailsSentTodayDecena6:nil];
    [self setEmailsSentTodayDecena7:nil];
    [self setEmailsSentTodayDecena8:nil];
    [self setEmailsSentTodayDecena9:nil];
    [self setEmailsSentTodayCentena:nil];
    [self setEmailsSentTodayCentena0:nil];
    [self setEmailsSentTodayCentena1:nil];
    [self setEmailsSentTodayCentena2:nil];
    [self setEmailsSentTodayCentena3:nil];
    [self setEmailsSentTodayCentena4:nil];
    [self setEmailsSentTodayCentena5:nil];
    [self setEmailsSentTodayCentena6:nil];
    [self setEmailsSentTodayCentena7:nil];
    [self setEmailsSentTodayCentena8:nil];
    [self setEmailsSentTodayCentena9:nil];
    [self setEmailsSentTodayUnidadDeMil:nil];
    [self setEmailsSentTodayUnidadDeMil0:nil];
    [self setEmailsSentTodayUnidadDeMil1:nil];
    [self setEmailsSentTodayUnidadDeMil2:nil];
    [self setEmailsSentTodayUnidadDeMil3:nil];
    [self setEmailsSentTodayUnidadDeMil4:nil];
    [self setEmailsSentTodayUnidadDeMil5:nil];
    [self setEmailsSentTodayUnidadDeMil6:nil];
    [self setEmailsSentTodayUnidadDeMil7:nil];
    [self setEmailsSentTodayUnidadDeMil8:nil];
    [self setEmailsSentTodayUnidadDeMil9:nil];
    [self setEmailsSentTodayDecenaDeMil:nil];
    [self setEmailsSentTodayDecenaDeMil0:nil];
    [self setEmailsSentTodayDecenaDeMil1:nil];
    [self setEmailsSentTodayDecenaDeMil2:nil];
    [self setEmailsSentTodayDecenaDeMil3:nil];
    [self setEmailsSentTodayDecenaDeMil4:nil];
    [self setEmailsSentTodayDecenaDeMil5:nil];
    [self setEmailsSentTodayDecenaDeMil6:nil];
    [self setEmailsSentTodayDecenaDeMil7:nil];
    [self setEmailsSentTodayDecenaDeMil8:nil];
    [self setEmailsSentTodayDecenaDeMil9:nil];
    [self setEmailsSentTodayCentenaDeMil:nil];
    [self setEmailsSentTodayCentenaDeMil0:nil];
    [self setEmailsSentTodayCentenaDeMil1:nil];
    [self setEmailsSentTodayCentenaDeMil2:nil];
    [self setEmailsSentTodayCentenaDeMil3:nil];
    [self setEmailsSentTodayCentenaDeMil4:nil];
    [self setEmailsSentTodayCentenaDeMil5:nil];
    [self setEmailsSentTodayCentenaDeMil6:nil];
    [self setEmailsSentTodayCentenaDeMil7:nil];
    [self setEmailsSentTodayCentenaDeMil8:nil];
    [self setEmailsSentTodayCentenaDeMil9:nil];
    [self setEmailsSentTodayUnidadDeMillon:nil];
    [self setEmailsSentTodayUnidadDeMillon0:nil];
    [self setEmailsSentTodayUnidadDeMillon1:nil];
    [self setEmailsSentTodayUnidadDeMillon2:nil];
    [self setEmailsSentTodayUnidadDeMillon3:nil];
    [self setEmailsSentTodayUnidadDeMillon4:nil];
    [self setEmailsSentTodayUnidadDeMillon5:nil];
    [self setEmailsSentTodayUnidadDeMillon6:nil];
    [self setEmailsSentTodayUnidadDeMillon7:nil];
    [self setEmailsSentTodayUnidadDeMillon8:nil];
    [self setEmailsSentTodayUnidadDeMillon9:nil];
    [self setEmailsSentTodayDecenaDeMillon:nil];
    [self setEmailsSentTodayDecenaDeMillon0:nil];
    [self setEmailsSentTodayDecenaDeMillon1:nil];
    [self setEmailsSentTodayDecenaDeMillon2:nil];
    [self setEmailsSentTodayDecenaDeMillon3:nil];
    [self setEmailsSentTodayDecenaDeMillon4:nil];
    [self setEmailsSentTodayDecenaDeMillon5:nil];
    [self setEmailsSentTodayDecenaDeMillon6:nil];
    [self setEmailsSentTodayDecenaDeMillon7:nil];
    [self setEmailsSentTodayDecenaDeMillon8:nil];
    [self setEmailsSentTodayDecenaDeMillon9:nil];
    [self setEmailsSentTodayFisrtColon:nil];
    [self setEmailsSentTodaySecondColon:nil];
    [self setCampaingsSentTodayUnidad:nil];
    [self setCampaingsSentTodayUnidad0:nil];
    [self setCampaingsSentTodayUnidad1:nil];
    [self setCampaingsSentTodayUnidad2:nil];
    [self setCampaingsSentTodayUnidad3:nil];
    [self setCampaingsSentTodayUnidad4:nil];
    [self setCampaingsSentTodayUnidad5:nil];
    [self setCampaingsSentTodayUnidad6:nil];
    [self setCampaingsSentTodayUnidad7:nil];
    [self setCampaingsSentTodayUnidad8:nil];
    [self setCampaingsSentTodayUnidad9:nil];
    [self setCampaingsSentTodayDecena:nil];
    [self setCampaingsSentTodayDecena0:nil];
    [self setCampaingsSentTodayDecena1:nil];
    [self setCampaingsSentTodayDecena2:nil];
    [self setCampaingsSentTodayDecena3:nil];
    [self setCampaingsSentTodayDecena4:nil];
    [self setCampaingsSentTodayDecena5:nil];
    [self setCampaingsSentTodayDecena6:nil];
    [self setCampaingsSentTodayDecena7:nil];
    [self setCampaingsSentTodayDecena8:nil];
    [self setCampaingsSentTodayDecena9:nil];
    [self setCampaingsSentTodayCentena:nil];
    [self setCampaingsSentTodayCentena0:nil];
    [self setCampaingsSentTodayCentena0:nil];
    [self setCampaingsSentTodayCentena1:nil];
    [self setCampaingsSentTodayCentena2:nil];
    [self setCampaingsSentTodayCentena3:nil];
    [self setCampaingsSentTodayCentena4:nil];
    [self setCampaingsSentTodayCentena5:nil];
    [self setCampaingsSentTodayCentena6:nil];
    [self setCampaingsSentTodayCentena7:nil];
    [self setCampaingsSentTodayCentena8:nil];
    [self setCampaingsSentTodayCentena9:nil];
    [self setCampaingsSentTodayUnidadDeMil:nil];
    [self setCampaingsSentTodayUnidadDeMil0:nil];
    [self setCampaingsSentTodayUnidadDeMil1:nil];
    [self setCampaingsSentTodayUnidadDeMil2:nil];
    [self setCampaingsSentTodayUnidadDeMil3:nil];
    [self setCampaingsSentTodayUnidadDeMil4:nil];
    [self setCampaingsSentTodayUnidadDeMil5:nil];
    [self setCampaingsSentTodayUnidadDeMil6:nil];
    [self setCampaingsSentTodayUnidadDeMil7:nil];
    [self setCampaingsSentTodayUnidadDeMil8:nil];
    [self setCampaingsSentTodayUnidadDeMil9:nil];
    [self setCampaingsSentTodayDecenaDeMil:nil];
    [self setCampaingsSentTodayDecenaDeMil0:nil];
    [self setCampaingsSentTodayDecenaDeMil1:nil];
    [self setCampaingsSentTodayDecenaDeMil2:nil];
    [self setCampaingsSentTodayDecenaDeMil3:nil];
    [self setCampaingsSentTodayDecenaDeMil4:nil];
    [self setCampaingsSentTodayDecenaDeMil5:nil];
    [self setCampaingsSentTodayDecenaDeMil6:nil];
    [self setCampaingsSentTodayDecenaDeMil7:nil];
    [self setCampaingsSentTodayDecenaDeMil8:nil];
    [self setCampaingsSentTodayDecenaDeMil9:nil];
    [self setCampaingsSentTodayFirstColon:nil];
    [self setHistoryEmailsSentUnidad:nil];
    [self setHistoryEmailsSentUnidad0:nil];
    [self setHistoryEmailsSentUnidad1:nil];
    [self setHistoryEmailsSentUnidad2:nil];
    [self setHistoryEmailsSentUnidad3:nil];
    [self setHistoryEmailsSentUnidad4:nil];
    [self setHistoryEmailsSentUnidad5:nil];
    [self setHistoryEmailsSentUnidad6:nil];
    [self setHistoryEmailsSentUnidad7:nil];
    [self setHistoryEmailsSentUnidad8:nil];
    [self setHistoryEmailsSentUnidad9:nil];
    [self setHistoryEmailsSentDecena:nil];
    [self setHistoryEmailsSentDecena0:nil];
    [self setHistoryEmailsSentDecena1:nil];
    [self setHistoryEmailsSentDecena2:nil];
    [self setHistoryEmailsSentDecena3:nil];
    [self setHistoryEmailsSentDecena4:nil];
    [self setHistoryEmailsSentDecena5:nil];
    [self setHistoryEmailsSentDecena6:nil];
    [self setHistoryEmailsSentDecena7:nil];
    [self setHistoryEmailsSentDecena8:nil];
    [self setHistoryEmailsSentDecena9:nil];
    [self setHistoryEmailsSentCentena:nil];
    [self setHistoryEmailsSentCentena0:nil];
    [self setHistoryEmailsSentCentena1:nil];
    [self setHistoryEmailsSentCentena2:nil];
    [self setHistoryEmailsSentCentena3:nil];
    [self setHistoryEmailsSentCentena4:nil];
    [self setHistoryEmailsSentCentena5:nil];
    [self setHistoryEmailsSentCentena6:nil];
    [self setHistoryEmailsSentCentena7:nil];
    [self setHistoryEmailsSentCentena8:nil];
    [self setHistoryEmailsSentCentena9:nil];
    [self setHistoryEmailsSentUnidadDeMil:nil];
    [self setHistoryEmailsSentUnidadDeMil0:nil];
    [self setHistoryEmailsSentUnidadDeMil1:nil];
    [self setHistoryEmailsSentUnidadDeMil2:nil];
    [self setHistoryEmailsSentUnidadDeMil3:nil];
    [self setHistoryEmailsSentUnidadDeMil4:nil];
    [self setHistoryEmailsSentUnidadDeMil5:nil];
    [self setHistoryEmailsSentUnidadDeMil6:nil];
    [self setHistoryEmailsSentUnidadDeMil7:nil];
    [self setHistoryEmailsSentUnidadDeMil8:nil];
    [self setHistoryEmailsSentUnidadDeMil9:nil];
    [self setHistoryEmailsSentDecenaDeMil:nil];
    [self setHistoryEmailsSentDecenaDeMil0:nil];
    [self setHistoryEmailsSentDecenaDeMil1:nil];
    [self setHistoryEmailsSentDecenaDeMil2:nil];
    [self setHistoryEmailsSentDecenaDeMil3:nil];
    [self setHistoryEmailsSentDecenaDeMil4:nil];
    [self setHistoryEmailsSentDecenaDeMil5:nil];
    [self setHistoryEmailsSentDecenaDeMil6:nil];
    [self setHistoryEmailsSentDecenaDeMil7:nil];
    [self setHistoryEmailsSentDecenaDeMil8:nil];
    [self setHistoryEmailsSentDecenaDeMil9:nil];
    [self setHistoryEmailsSentCentenaDeMil:nil];
    [self setHistoryEmailsSentCentenaDeMil0:nil];
    [self setHistoryEmailsSentCentenaDeMil1:nil];
    [self setHistoryEmailsSentCentenaDeMil2:nil];
    [self setHistoryEmailsSentCentenaDeMil3:nil];
    [self setHistoryEmailsSentCentenaDeMil4:nil];
    [self setHistoryEmailsSentCentenaDeMil5:nil];
    [self setHistoryEmailsSentCentenaDeMil6:nil];
    [self setHistoryEmailsSentCentenaDeMil7:nil];
    [self setHistoryEmailsSentCentenaDeMil8:nil];
    [self setHistoryEmailsSentCentenaDeMil9:nil];
    [self setHistoryEmailsSentUnidadDeMillon:nil];
    [self setHistoryEmailsSentUnidadDeMillon0:nil];
    [self setHistoryEmailsSentUnidadDeMillon1:nil];
    [self setHistoryEmailsSentUnidadDeMillon2:nil];
    [self setHistoryEmailsSentUnidadDeMillon3:nil];
    [self setHistoryEmailsSentUnidadDeMillon4:nil];
    [self setHistoryEmailsSentUnidadDeMillon5:nil];
    [self setHistoryEmailsSentUnidadDeMillon6:nil];
    [self setHistoryEmailsSentUnidadDeMillon7:nil];
    [self setHistoryEmailsSentUnidadDeMillon8:nil];
    [self setHistoryEmailsSentUnidadDeMillon:nil];
    [self setHistoryEmailsSentUnidadDeMillon9:nil];
    [self setHistoryEmailsSentDecenaDeMillon:nil];
    [self setHistoryEmailsSentDecenaDeMillon0:nil];
    [self setHistoryEmailsSentDecenaDeMillon1:nil];
    [self setHistoryEmailsSentDecenaDeMillon2:nil];
    [self setHistoryEmailsSentDecenaDeMillon3:nil];
    [self setHistoryEmailsSentDecenaDeMillon4:nil];
    [self setHistoryEmailsSentDecenaDeMillon5:nil];
    [self setHistoryEmailsSentDecenaDeMillon6:nil];
    [self setHistoryEmailsSentDecenaDeMillon7:nil];
    [self setHistoryEmailsSentDecenaDeMillon8:nil];
    [self setHistoryEmailsSentDecenaDeMillon9:nil];
    [self setHistoryEmailsSentFirstColon:nil];
    [self setHistoryEmailsSentSecondColon:nil];
    [self setHistoryCampaingsSentUnidad:nil];
    [self setHistoryCampaingsSentUnidad0:nil];
    [self setHistoryCampaingsSentUnidad1:nil];
    [self setHistoryCampaingsSentUnidad2:nil];
    [self setHistoryCampaingsSentUnidad3:nil];
    [self setHistoryCampaingsSentUnidad4:nil];
    [self setHistoryCampaingsSentUnidad5:nil];
    [self setHistoryCampaingsSentUnidad6:nil];
    [self setHistoryCampaingsSentUnidad7:nil];
    [self setHistoryCampaingsSentUnidad8:nil];
    [self setHistoryCampaingsSentUnidad9:nil];
    [self setHistoryCampaingsSentDecena:nil];
    [self setHistoryCampaingsSentDecena0:nil];
    [self setHistoryCampaingsSentDecena1:nil];
    [self setHistoryCampaingsSentDecena2:nil];
    [self setHistoryCampaingsSentDecena3:nil];
    [self setHistoryCampaingsSentDecena4:nil];
    [self setHistoryCampaingsSentDecena5:nil];
    [self setHistoryCampaingsSentDecena6:nil];
    [self setHistoryCampaingsSentDecena7:nil];
    [self setHistoryCampaingsSentDecena8:nil];
    [self setHistoryCampaingsSentDecena9:nil];
    [self setHistoryCampaingsSentCentena:nil];
    [self setHistoryCampaingsSentCentena0:nil];
    [self setHistoryCampaingsSentCentena1:nil];
    [self setHistoryCampaingsSentCentena2:nil];
    [self setHistoryCampaingsSentCentena3:nil];
    [self setHistoryCampaingsSentCentena4:nil];
    [self setHistoryCampaingsSentCentena5:nil];
    [self setHistoryCampaingsSentCentena6:nil];
    [self setHistoryCampaingsSentCentena7:nil];
    [self setHistoryCampaingsSentCentena8:nil];
    [self setHistoryCampaingsSentCentena9:nil];
    [self setHistoryCampaingsSentUnidadDeMil:nil];
    [self setHistoryCampaingsSentUnidadDeMil0:nil];
    [self setHistoryCampaingsSentUnidadDeMil1:nil];
    [self setHistoryCampaingsSentUnidadDeMil2:nil];
    [self setHistoryCampaingsSentUnidadDeMil3:nil];
    [self setHistoryCampaingsSentUnidadDeMil4:nil];
    [self setHistoryCampaingsSentUnidadDeMil5:nil];
    [self setHistoryCampaingsSentUnidadDeMil6:nil];
    [self setHistoryCampaingsSentUnidadDeMil7:nil];
    [self setHistoryCampaingsSentUnidadDeMil8:nil];
    [self setHistoryCampaingsSentUnidadDeMil9:nil];
    [self setHistoryCampaingsSentDecenaDeMil0:nil];
    [self setHistoryCampaingsSentDecenaDeMil1:nil];
    [self setHistoryCampaingsSentDecenaDeMil2:nil];
    [self setHistoryCampaingsSentDecenaDeMil3:nil];
    [self setHistoryCampaingsSentDecenaDeMil4:nil];
    [self setHistoryCampaingsSentDecenaDeMil5:nil];
    [self setHistoryCampaingsSentDecenaDeMil6:nil];
    [self setHistoryCampaingsSentDecenaDeMil7:nil];
    [self setHistoryCampaingsSentDecenaDeMil8:nil];
    [self setHistoryCampaingsSentDecenaDeMil9:nil];
    [self setHistoryCampaingsSentDecenaDeMil:nil];
    [self setHistoryCampaingsSentCentenaDeMil:nil];
    [self setHistoryCampaingsSentCentenaDeMil0:nil];
    [self setHistoryCampaingsSentCentenaDeMil1:nil];
    [self setHistoryCampaingsSentCentenaDeMil2:nil];
    [self setHistoryCampaingsSentCentenaDeMil3:nil];
    [self setHistoryCampaingsSentCentenaDeMil4:nil];
    [self setHistoryCampaingsSentCentenaDeMil5:nil];
    [self setHistoryCampaingsSentCentenaDeMil6:nil];
    [self setHistoryCampaingsSentCentenaDeMil7:nil];
    [self setHistoryCampaingsSentCentenaDeMil8:nil];
    [self setHistoryCampaingsSentCentenaDeMil:nil];
    [self setHistoryCampaingsSentCentenaDeMil9:nil];
    [self setHistoryCampaingsSentUnidadDeMillon:nil];
    [self setHistoryCampaingsSentUnidadDeMillon0:nil];
    [self setHistoryCampaingsSentUnidadDeMillon1:nil];
    [self setHistoryCampaingsSentUnidadDeMillon2:nil];
    [self setHistoryCampaingsSentUnidadDeMillon3:nil];
    [self setHistoryCampaingsSentUnidadDeMillon4:nil];
    [self setHistoryCampaingsSentUnidadDeMillon5:nil];
    [self setHistoryCampaingsSentUnidadDeMillon6:nil];
    [self setHistoryCampaingsSentUnidadDeMillon7:nil];
    [self setHistoryCampaingsSentUnidadDeMillon8:nil];
    [self setHistoryCampaingsSentUnidadDeMillon9:nil];
    [self setHistoryCampaingsSentDecenaDeMillon:nil];
    [self setHistoryCampaingsSentDecenaDeMillon0:nil];
    [self setHistoryCampaingsSentDecenaDeMillon1:nil];
    [self setHistoryCampaingsSentDecenaDeMillon2:nil];
    [self setHistoryCampaingsSentDecenaDeMillon3:nil];
    [self setHistoryCampaingsSentDecenaDeMillon4:nil];
    [self setHistoryCampaingsSentDecenaDeMillon5:nil];
    [self setHistoryCampaingsSentDecenaDeMillon6:nil];
    [self setHistoryCampaingsSentDecenaDeMillon7:nil];
    [self setHistoryCampaingsSentDecenaDeMillon8:nil];
    [self setHistoryCampaingsSentDecenaDeMillon9:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

-(void)doAllCounterOprerations{
    //tengo un arreglo con 6 valores
    //hay que hacer calculos para cada uno de ellos de forma independiente
    
}

-(int)whichIsTheMayorIndexChanged:(NSString *)newNumber 
                       :(NSString *)oldNumber{
    int indexSum = 0;
    for (int index = 0; index < [newNumber length] && index < [oldNumber length]; index++) {
        int a = [newNumber characterAtIndex:[newNumber length]-1 -index] -48;
        int b = [oldNumber characterAtIndex:[oldNumber length]-1 -index] -48;
        if(a != b){
            indexSum = index;
        }
    }
    return indexSum;
}

-(int)whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:(NSString *)newNumber 
                                 :(NSString *)oldNumber{
    int indexSum = 0;
    if ([oldNumber length] < [newNumber length]) {
        indexSum = [newNumber length]-1;
    }
    else if ([oldNumber length] == [newNumber length]){
        for (int index = 0; index < [newNumber length] ; index++) {
            int a = [newNumber characterAtIndex:[newNumber length]-1 -index] -48;
            int b = [oldNumber characterAtIndex:[oldNumber length]-1 -index] -48;
            if(a != b){
                indexSum = index;
            }
        }
    }
    else {
        indexSum = [newNumber length]-1;

    }
    return indexSum;
}


-(void)calculateLargestSentCampaignForAnimation{
   
    //NSMutableArray *rta = [[CounterRequest start] copy];
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_LARGETS_SENT_CAMPAIGN];
    NSLog(@"Triste %d",largestSentCampaignValue );
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
    
    if([contador intValue] != largestSentCampaignValue ){ // do something is the number are differents !!
            int mayorIndexChanged;
            NSString *old = [NSString stringWithFormat:@"%d", largestSentCampaignValue];

            if(largestSentCampaignValue > [contador intValue]){
                mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
                //TODO:
                //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
                [self hideTheNumbersHiestThanThisParameter_LargestSentCampaign_:[contador length]];
            }
            else if (largestSentCampaignValue == [contador intValue]) {
                mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            }
            else {
                mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
            }
        
        
            
            largestSentCampaignValue = [contador intValue];
            for (int index = 0; index <= mayorIndexChanged; index++) {
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
                if(index == 7){ //decena de millon
                    largestSentCampaignDecenaDeMillon.hidden = NO;
                    [self largestSentCampaignSpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
                }
            } 
    }
}

//calculateEmailsSentSinceStartUpForAnimation
-(void)calculateHistoryEmailsSentForAnimation{
    
    //NSMutableArray *rta = [[CounterRequest start] copy];
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_EMAILS_SINCE_START_UP];
    NSLog(@"DOPPLER_EMAILS_SINCE_START_UP %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
    if([contador intValue] != historyEmailsSentValue ){ // do something is the number are differents !!
        
        int mayorIndexChanged;
        NSString *old = [NSString stringWithFormat:@"%d", historyEmailsSentValue];
        
        if(historyEmailsSentValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_HistoryEmailsSent_:[contador length]];
        }
        else if (historyEmailsSentValue == [contador intValue]) {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }
        
        historyEmailsSentValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                historyEmailsSentUnidad.hidden = NO;
                [self historyEmailsSentSpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                historyEmailsSentDecena.hidden = NO;
                [self historyEmailsSentSpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                historyEmailsSentCentena.hidden = NO;
                [self historyEmailsSentSpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                historyEmailsSentUnidadDeMil.hidden = NO;
                [self historyEmailsSentSpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                historyEmailsSentFirstColon.hidden = NO;
                
            }
            
            if(index == 4){ //decena de mil
                historyEmailsSentDecenaDeMil.hidden = NO;
                [self historyEmailsSentSpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
                
            }
            if(index == 5){ //centena de mil
                historyEmailsSentCentenaDeMil.hidden = NO;
                [self historyEmailsSentSpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
            }
            if(index == 6){ //unidad de millon
                historyEmailsSentUnidadDeMillon.hidden = NO;
                [self historyEmailsSentSpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
                historyEmailsSentSecondColon.hidden = NO;
            }
            if(index == 7){ //Decena de millon
                historyEmailsSentDecenaDeMillon.hidden = NO;
                [self historyEmailsSentSpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
            }
        } 
    }
}
-(void)calculateHistoryCampaingsSentForAnimation{
    //NSMutableArray *rta = [[CounterRequest start] copy];
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_CAMPAIGNS_SENT_SINCE_START_UP];
    NSLog(@"DOPPLER_CAMPAIGNS_SENT_SINCE_START_UP %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
    if([contador intValue] != historyCampaignsSentValue ){ // do something is the number are differents !!
        
        int mayorIndexChanged;
        NSString *old = [NSString stringWithFormat:@"%d", historyCampaignsSentValue];
        
        if(historyCampaignsSentValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_HistoryCampaingsSent_:[contador length]];
        }
        else if (historyCampaignsSentValue == [contador intValue]) {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }
    
        historyCampaignsSentValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                historyCampaingsSentUnidad.hidden = NO;
                [self historyCampaingsSentSpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                historyCampaingsSentDecena.hidden = NO;
                [self historyCampaingsSentSpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                historyCampaingsSentCentena.hidden = NO;
                [self historyCampaingsSentSpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                historyCampaingsSentUnidadDeMil.hidden = NO;
                [self historyCampaingsSentSpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                historyCampaignsSentFirstColon.hidden = NO;
                
            }
            
            if(index == 4){ //decena de mil
                historyCampaingsSentDecenaDeMil.hidden = NO;
                [self historyCampaingsSentSpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
                
            }
            if(index == 5){ //centena de mil
                historyCampaingsSentCentenaDeMil.hidden = NO;
                [self historyCampaingsSentSpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
            }
            if(index == 6){ //unidad de millon
                historyCampaingsSentUnidadDeMillon.hidden = NO;
                [self historyCampaingsSentSpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
                historyCampaignsSentSecondColon.hidden = NO;
            }
            if(index == 7){ //Decena de millon
                historyCampaingsSentDecenaDeMillon.hidden = NO;
                [self historyCampaingsSentSpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
            }
        } 
    }
}

//  TIP: DRAG AND DROP A SET BUTTON AND CONECT TO THIS CODE (IBACTION) IS YOU WANT TO MADE SOME TESTING !!! 

- (IBAction)cargarValoresFijos_:(id)sender {
    largestSentCampaignValue = 2000000;
//    emailsSentTodayValue = 2000000;
    [self paraBorrar];
}

-(void)paraBorrar{
    NSString *contador = [NSString stringWithFormat:@"%d",34959];
    
    if([contador intValue] != emailsSentTodayValue ){ // do something is the number are differents !!
        
        int mayorIndexChanged;
        if(emailsSentTodayValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            NSString *old = [NSString stringWithFormat:@"%d", emailsSentTodayValue];
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_EmailsSentToday_:[contador length]];
        }
        else if (emailsSentTodayValue == [contador intValue]) {
            NSString *old = [NSString stringWithFormat:@"%d", emailsSentTodayValue];
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            NSString *old = [NSString stringWithFormat:@"%d", emailsSentTodayValue];
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }
        
        emailsSentTodayValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                EmailsSentTodayUnidad.hidden = NO;
                [self emailsSentTodaySpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                emailsSentTodayDecena.hidden = NO;
                [self emailsSentTodaySpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                emailsSentTodayCentena.hidden = NO;
                [self emailsSentTodaySpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                emailsSentTodayUnidadDeMil.hidden = NO;
                [self emailsSentTodaySpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                emailsSentTodayFisrtColon.hidden = NO;
                
            }
            if(index == 4){ //decena de mil
                emailsSentTodayDecenaDeMil.hidden = NO;
                [self emailsSentTodaySpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
                
            }
            if(index == 5){ //centena de mil
                emailsSentTodayCentenaDeMil.hidden = NO;
                [self emailsSentTodaySpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
            }
            if(index == 6){ //unidad de millon
                emailsSentTodayUnidadDeMillon.hidden = NO;
                [self emailsSentTodaySpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
                emailsSentTodaySecondColon.hidden = NO;
            }
            if(index == 7){ //decena de millon
                emailsSentTodayDecenaDeMillon.hidden = NO;
                [self emailsSentTodaySpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
            }
        } 
    }

}
//TODO - TODO TODO TODO TODO TODO TODO

-(void)calculateEmailsSentTodayForAnimation{
    //NSMutableArray *rta = [[CounterRequest start] copy];
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_EMAILS_SENT_TODAY];
    NSLog(@"DOPPLER_EMAILS_SENT_TODAY %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
    if([contador intValue] != emailsSentTodayValue ){ // do something is the number are differents !!
    
        int mayorIndexChanged;
        NSString *old = [NSString stringWithFormat:@"%d", emailsSentTodayValue];
        
        if(emailsSentTodayValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_EmailsSentToday_:[contador length]];
        }
        else if (emailsSentTodayValue == [contador intValue]) {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }
        
        emailsSentTodayValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                EmailsSentTodayUnidad.hidden = NO;
                [self emailsSentTodaySpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                emailsSentTodayDecena.hidden = NO;
                [self emailsSentTodaySpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                emailsSentTodayCentena.hidden = NO;
                [self emailsSentTodaySpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                emailsSentTodayUnidadDeMil.hidden = NO;
                [self emailsSentTodaySpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                emailsSentTodayFisrtColon.hidden = NO;
                
            }
            if(index == 4){ //decena de mil
                emailsSentTodayDecenaDeMil.hidden = NO;
                [self emailsSentTodaySpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
                
            }
            if(index == 5){ //centena de mil
                emailsSentTodayCentenaDeMil.hidden = NO;
                [self emailsSentTodaySpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
            }
            if(index == 6){ //unidad de millon
                emailsSentTodayUnidadDeMillon.hidden = NO;
                [self emailsSentTodaySpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
                emailsSentTodaySecondColon.hidden = NO;
            }
            if(index == 7){ //decena de millon
                emailsSentTodayDecenaDeMillon.hidden = NO;
                [self emailsSentTodaySpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
            }
        } 
    }
}
-(void)calculateCampaingSentTodayForAnimation{ 
    //NSMutableArray *rta = [[CounterRequest start] copy];
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_CAMPAIGNS_SENT_TODAY];
    NSLog(@"DOPPLER_CAMPAIGNS_SENT_TODAY %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];
    
    
    if([contador intValue] != campaingsSentTodayValue ){ // do something is the number are differents !!
        int mayorIndexChanged;
        NSString *old = [NSString stringWithFormat:@"%d", campaingsSentTodayValue];
        
        if(campaingsSentTodayValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_CampaingSentToday_:[contador length]];
        }
        else if (campaingsSentTodayValue == [contador intValue]) {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }        
    
    
        campaingsSentTodayValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
            NSLog(@" Index: %d Value: %C",index,[contador characterAtIndex:index]);
            if(index == 0){ //unidad
                campaingsSentTodayUnidad.hidden = NO;
                [self campaingsSentTodaySpinUnidad: 1 number:[contador characterAtIndex: [contador length]-1]-48 totalCiclos:2];
            }
            if(index == 1){ // decena
                campaingsSentTodayDecena.hidden = NO;
                [self campaingsSentTodaySpinDecena:1 number:[contador characterAtIndex: [contador length]-2]-48];
            }
            if(index == 2){ //centena
                campaingsSentTodayCentena.hidden = NO;
                [self campaingsSentTodaySpinCentena:1 number:[contador characterAtIndex: [contador length]-3]-48];
            }
            if(index == 3){ //unidad de mil
                campaingsSentTodayUnidadDeMil.hidden = NO;
                [self campaingsSentTodaySpinUnidadDeMil:1 number:[contador characterAtIndex: [contador length]-4]-48];
                campaingsSentTodayFirstColon.hidden = NO;
            }
            if(index == 4){ //decena de mil
                campaingsSentTodayDecenaDeMil.hidden = NO;
                [self campaingsSentTodaySpinDecenaDeMil:1 number:[contador characterAtIndex: [contador length]-5]-48];
            }
    //        if(index == 5){ //centena de mil
    //            campaingsSentTodayCentenaDeMil.hidden = NO;
    //            [self campaingsSentTodaySpinCentenaDeMil:1 number:[contador characterAtIndex: [contador length]-6]-48];
    //        }
    //        if(index == 6){ //unidad de millon
    //            campaingsSentTodayUnidadDeMillon.hidden = NO;
    //            [self campaingsSentTodaySpinUnidadDeMillon:1 number:[contador characterAtIndex: [contador length]-7]-48];
    //            campaingsSentTodaySecondColon.hidden = NO;
    //        }
    //        if(index == 7){ //decena de millon
    //            campaingsSentTodayDecenaDeMillon.hidden = NO;
    //            [self campaingsSentTodaySpinDecenaDeMillon:1 number:[contador characterAtIndex: [contador length]-8]-48];
    //        }
        } 
    }

}

-(void)calculateDaysSinceStartUpForAnimation{
    
    NSMutableArray *rta = [CounterRequest getArrayOfUserDefault];
    
    NSString *stringNumber= [rta objectAtIndex: DOPPLER_DAYS_SINCE_START_UP];
    NSLog(@"DOPPLER_DAYS_SINCE_START_UP %d",[stringNumber intValue]);
    NSString *contador = [NSString stringWithFormat:@"%d",[stringNumber intValue]];

    if([contador intValue] != daysSinceStartUpValue ){ // do something is the number are differents !!
        
        int mayorIndexChanged;
        NSString *old = [NSString stringWithFormat:@"%d", daysSinceStartUpValue];
        
        if(daysSinceStartUpValue > [contador intValue]){ //ey ! the new value is minor that previus value !!!
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
            //TODO:
            //Aca tengo es hacer un hidden de las unidades mayores a [contador lengh] (que es el nuevo valor)
            [self hideTheNumbersHiestThanThisParameter_DaysSinceStartUp_:[contador length]];
        }
        else if (daysSinceStartUpValue == [contador intValue]) {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged:contador :old];
        }
        else {
            mayorIndexChanged = [self whichIsTheMayorIndexChanged_WHEN_NewValue_is_biggest:contador :old];
        }     
        
        
        daysSinceStartUpValue = [contador intValue];
        for (int index = 0; index <= mayorIndexChanged; index++) {
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

//THE FOLLOWING CODE HIDE THE BIGGEST NUMBER WHEN IS NECESSARY 

-(void)hideTheNumbersHiestThanThisParameter_EmailsSentToday_:(int)position{
    switch (position) {
        case 1:
            emailsSentTodayDecena.hidden = YES;
            emailsSentTodayCentena.hidden = YES;
            emailsSentTodayFisrtColon.hidden = YES;
            emailsSentTodayUnidadDeMil.hidden = YES;
            emailsSentTodayDecenaDeMil.hidden = YES;
            emailsSentTodayCentenaDeMil.hidden = YES;
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;
        case 2:
            emailsSentTodayCentena.hidden = YES;
            emailsSentTodayFisrtColon.hidden = YES;
            emailsSentTodayUnidadDeMil.hidden = YES;
            emailsSentTodayDecenaDeMil.hidden = YES;
            emailsSentTodayCentenaDeMil.hidden = YES;
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;
        case 3:
            emailsSentTodayFisrtColon.hidden = YES;
            emailsSentTodayUnidadDeMil.hidden = YES;
            emailsSentTodayDecenaDeMil.hidden = YES;
            emailsSentTodayCentenaDeMil.hidden = YES;
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;    
        case 4:
            emailsSentTodayDecenaDeMil.hidden = YES;
            emailsSentTodayCentenaDeMil.hidden = YES;
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;    
        case 5:
            emailsSentTodayCentenaDeMil.hidden = YES;
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;    
        case 6:
            emailsSentTodaySecondColon.hidden = YES;
            emailsSentTodayUnidadDeMillon.hidden = YES;
            emailsSentTodayDecenaDeMillon.hidden = YES;
            break;    
        case 7:
            emailsSentTodayDecenaDeMillon.hidden = YES;
            
        default:
            break;
    }
}

-(void)hideTheNumbersHiestThanThisParameter_HistoryEmailsSent_:(int)position{
    switch (position) {
        case 1:
            historyEmailsSentDecena.hidden = YES;
            historyEmailsSentCentena.hidden = YES;
            historyEmailsSentFirstColon.hidden = YES;
            historyEmailsSentUnidadDeMil.hidden = YES;
            historyEmailsSentDecenaDeMil.hidden = YES;
            historyEmailsSentCentenaDeMil.hidden = YES;
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;
        case 2:
            historyEmailsSentCentena.hidden = YES;
            historyEmailsSentFirstColon.hidden = YES;
            historyEmailsSentUnidadDeMil.hidden = YES;
            historyEmailsSentDecenaDeMil.hidden = YES;
            historyEmailsSentCentenaDeMil.hidden = YES;
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;
        case 3:
            historyEmailsSentFirstColon.hidden = YES;
            historyEmailsSentUnidadDeMil.hidden = YES;
            historyEmailsSentDecenaDeMil.hidden = YES;
            historyEmailsSentCentenaDeMil.hidden = YES;
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;    
        case 4:
            historyEmailsSentDecenaDeMil.hidden = YES;
            historyEmailsSentCentenaDeMil.hidden = YES;
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;    
        case 5:
            historyEmailsSentCentenaDeMil.hidden = YES;            
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;    
        case 6:
            historyEmailsSentSecondColon.hidden = YES;
            historyEmailsSentUnidadDeMillon.hidden = YES;
            historyEmailsSentDecenaDeMillon.hidden = YES;
            break;    
        case 7:
            historyEmailsSentDecenaDeMillon.hidden = YES;
            
        default:
            break;
    }
}



-(void)hideTheNumbersHiestThanThisParameter_HistoryCampaingsSent_:(int)position{
    switch (position) {
        case 1:
            historyCampaingsSentDecena.hidden = YES;
            historyCampaingsSentCentena.hidden = YES;
            historyCampaignsSentFirstColon.hidden = YES;
            historyCampaingsSentUnidadDeMil.hidden = YES;
            historyCampaingsSentDecenaDeMil.hidden = YES;
            historyCampaingsSentCentenaDeMil.hidden = YES;
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;
        case 2:
            historyCampaingsSentCentena.hidden = YES;
            historyCampaignsSentFirstColon.hidden = YES;
            historyCampaingsSentUnidadDeMil.hidden = YES;
            historyCampaingsSentDecenaDeMil.hidden = YES;
            historyCampaingsSentCentenaDeMil.hidden = YES;
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;
        case 3:
            historyCampaignsSentFirstColon.hidden = YES;
            historyCampaingsSentUnidadDeMil.hidden = YES;
            historyCampaingsSentDecenaDeMil.hidden = YES;
            historyCampaingsSentCentenaDeMil.hidden = YES;
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;    
        case 4:
            historyCampaingsSentDecenaDeMil.hidden = YES;
            historyCampaingsSentCentenaDeMil.hidden = YES;
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;    
        case 5:
            historyCampaingsSentCentenaDeMil.hidden = YES;
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;    
        case 6:
            historyCampaignsSentSecondColon.hidden = YES;
            historyCampaingsSentUnidadDeMillon.hidden = YES;
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            break;    
        case 7:
            historyCampaingsSentDecenaDeMillon.hidden = YES;
            
        default:
            break;
    }
}


-(void)hideTheNumbersHiestThanThisParameter_CampaingSentToday_:(int)position{
    switch (position) {
        case 1:
            campaingsSentTodayDecena.hidden = YES;
            campaingsSentTodayCentena.hidden = YES;
            campaingsSentTodayFirstColon.hidden = YES;
            campaingsSentTodayUnidadDeMil.hidden = YES;
            campaingsSentTodayDecenaDeMil.hidden = YES;
            break;
        case 2:
            campaingsSentTodayCentena.hidden = YES;
            campaingsSentTodayFirstColon.hidden = YES;
            campaingsSentTodayUnidadDeMil.hidden = YES;
            campaingsSentTodayDecenaDeMil.hidden = YES;
            break;
        case 3:
            campaingsSentTodayFirstColon.hidden = YES;
            campaingsSentTodayUnidadDeMil.hidden = YES;
            campaingsSentTodayDecenaDeMil.hidden = YES;
            break;    
        case 4:
            campaingsSentTodayDecenaDeMil.hidden = YES;
            break;    
        default:
            break;
    }
}



-(void)hideTheNumbersHiestThanThisParameter_DaysSinceStartUp_:(int)position{
    switch (position) {
        case 1:
            decena.hidden = YES;
            centena.hidden = YES;
            break;
        case 2:
            centena.hidden = YES;
            break;
        default:
            break;
    }
}

-(void)hideTheNumbersHiestThanThisParameter_LargestSentCampaign_:(int)position{
    switch (position) {
        case 1:
            largestSentCampaignDecena.hidden = YES;
            largestSentCampaignCentena.hidden = YES;
            largestSentCampaignUnidadDeMil.hidden = YES;
            largestSentCampaignDecenaDeMil.hidden = YES;
            largestSentCampaignCentenaDeMil.hidden = YES;
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;
        case 2:
            largestSentCampaignCentena.hidden = YES;
            largestSentCampaignUnidadDeMil.hidden = YES;
            largestSentCampaignDecenaDeMil.hidden = YES;
            largestSentCampaignCentenaDeMil.hidden = YES;
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;
        case 3:
            largestSentCampaignUnidadDeMil.hidden = YES;
            largestSentCampaignDecenaDeMil.hidden = YES;
            largestSentCampaignCentenaDeMil.hidden = YES;
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;    
        case 4:
            largestSentCampaignDecenaDeMil.hidden = YES;
            largestSentCampaignCentenaDeMil.hidden = YES;
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;    
        case 5:
            largestSentCampaignCentenaDeMil.hidden = YES;
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;    
        case 6:
            largestSentCampaignUnidadDeMillon.hidden = YES;
            largestSentCampaignDecenaDeMillon.hidden = YES;
            break;    
        case 7:
            largestSentCampaignDecenaDeMillon.hidden = YES;
            
        default:
            break;
    }
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
                      duration: SPIN_DURATION_UNIDAD
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
                      duration: SPIN_DURATION_DECENA
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
                      duration: SPIN_DURATION_CENTENA
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
                      duration: SPIN_DURATION_UNIDAD
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
                      duration: SPIN_DURATION_DECENA
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
                      duration: SPIN_DURATION_CENTENA
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
                      duration: SPIN_DURATION_UNIDAD_DE_MIL
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
                      duration: SPIN_DURATION_DECENA_DE_MIL
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
                      duration: SPIN_DURATION_CENTENA_DE_MIL
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
                  duration: SPIN_DURATION_UNIDAD_DE_MILLON
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
                  duration: SPIN_DURATION_DECENA_DE_MILLON
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





//Emails Sent Today code !*************************************************************************************************************************


// Emails Sent Today spin unidad

- (void) emailsSentTodaySpinUnidad: (int) rotations 
                                number: (int) num
                           totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: EmailsSentTodayUnidad
                      duration: SPIN_DURATION_UNIDAD
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayUnidad0.hidden = NO;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = NO;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = NO;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = NO;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = NO;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = NO;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = NO;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = NO;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = NO;
                            emailsSentTodayUnidad9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayUnidad0.hidden = YES;
                            emailsSentTodayUnidad1.hidden = YES;
                            emailsSentTodayUnidad2.hidden = YES;
                            emailsSentTodayUnidad3.hidden = YES;
                            emailsSentTodayUnidad4.hidden = YES;
                            emailsSentTodayUnidad5.hidden = YES;
                            emailsSentTodayUnidad6.hidden = YES;
                            emailsSentTodayUnidad7.hidden = YES;
                            emailsSentTodayUnidad8.hidden = YES;
                            emailsSentTodayUnidad9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                    }];
}


- (void) emailsSentTodaySpinDecena: (int) rotations 
                                number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayDecena
                      duration: SPIN_DURATION_DECENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayDecena0.hidden = NO;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = NO;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = NO;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = NO;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = NO;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = NO;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = NO;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = NO;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = NO;
                            emailsSentTodayDecena9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayDecena0.hidden = YES;
                            emailsSentTodayDecena1.hidden = YES;
                            emailsSentTodayDecena2.hidden = YES;
                            emailsSentTodayDecena3.hidden = YES;
                            emailsSentTodayDecena4.hidden = YES;
                            emailsSentTodayDecena5.hidden = YES;
                            emailsSentTodayDecena6.hidden = YES;
                            emailsSentTodayDecena7.hidden = YES;
                            emailsSentTodayDecena8.hidden = YES;
                            emailsSentTodayDecena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinDecena:rotations + 1 number:rotations];
                    }];
}


- (void) emailsSentTodaySpinCentena: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayCentena
                      duration: SPIN_DURATION_CENTENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayCentena0.hidden = NO;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = NO;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = NO;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = NO;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = NO;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = NO;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = NO;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = NO;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = NO;
                            emailsSentTodayCentena9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayCentena0.hidden = YES;
                            emailsSentTodayCentena1.hidden = YES;
                            emailsSentTodayCentena2.hidden = YES;
                            emailsSentTodayCentena3.hidden = YES;
                            emailsSentTodayCentena4.hidden = YES;
                            emailsSentTodayCentena5.hidden = YES;
                            emailsSentTodayCentena6.hidden = YES;
                            emailsSentTodayCentena7.hidden = YES;
                            emailsSentTodayCentena8.hidden = YES;
                            emailsSentTodayCentena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinCentena:rotations + 1 number:rotations];
                    }];
}

- (void) emailsSentTodaySpinUnidadDeMil: (int) rotations 
                                     number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayUnidadDeMil
                      duration: SPIN_DURATION_UNIDAD_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayUnidadDeMil0.hidden = NO;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = NO;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = NO;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = NO;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = NO;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = NO;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = NO;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = NO;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = NO;
                            emailsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayUnidadDeMil0.hidden = YES;
                            emailsSentTodayUnidadDeMil1.hidden = YES;
                            emailsSentTodayUnidadDeMil2.hidden = YES;
                            emailsSentTodayUnidadDeMil3.hidden = YES;
                            emailsSentTodayUnidadDeMil4.hidden = YES;
                            emailsSentTodayUnidadDeMil5.hidden = YES;
                            emailsSentTodayUnidadDeMil6.hidden = YES;
                            emailsSentTodayUnidadDeMil7.hidden = YES;
                            emailsSentTodayUnidadDeMil8.hidden = YES;
                            emailsSentTodayUnidadDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinUnidadDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) emailsSentTodaySpinDecenaDeMil: (int) rotations 
                                     number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayDecenaDeMil
                      duration: SPIN_DURATION_DECENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayDecenaDeMil0.hidden = NO;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = NO;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = NO;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = NO;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = NO;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = NO;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = NO;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = NO;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = NO;
                            emailsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayDecenaDeMil0.hidden = YES;
                            emailsSentTodayDecenaDeMil1.hidden = YES;
                            emailsSentTodayDecenaDeMil2.hidden = YES;
                            emailsSentTodayDecenaDeMil3.hidden = YES;
                            emailsSentTodayDecenaDeMil4.hidden = YES;
                            emailsSentTodayDecenaDeMil5.hidden = YES;
                            emailsSentTodayDecenaDeMil6.hidden = YES;
                            emailsSentTodayDecenaDeMil7.hidden = YES;
                            emailsSentTodayDecenaDeMil8.hidden = YES;
                            emailsSentTodayDecenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinDecenaDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) emailsSentTodaySpinCentenaDeMil: (int) rotations 
                                      number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayCentenaDeMil
                      duration: SPIN_DURATION_CENTENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayCentenaDeMil0.hidden = NO;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = NO;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = NO;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = NO;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = NO;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = NO;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = NO;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = NO;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = NO;
                            emailsSentTodayCentenaDeMil9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayCentenaDeMil0.hidden = YES;
                            emailsSentTodayCentenaDeMil1.hidden = YES;
                            emailsSentTodayCentenaDeMil2.hidden = YES;
                            emailsSentTodayCentenaDeMil3.hidden = YES;
                            emailsSentTodayCentenaDeMil4.hidden = YES;
                            emailsSentTodayCentenaDeMil5.hidden = YES;
                            emailsSentTodayCentenaDeMil6.hidden = YES;
                            emailsSentTodayCentenaDeMil7.hidden = YES;
                            emailsSentTodayCentenaDeMil8.hidden = YES;
                            emailsSentTodayCentenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinCentenaDeMil:rotations + 1 number:rotations];
                    }];
}




- (void) emailsSentTodaySpinUnidadDeMillon: (int) rotations 
                                        number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayUnidadDeMillon
                      duration: SPIN_DURATION_UNIDAD_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayUnidadDeMillon0.hidden = NO;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = NO;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = NO;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = NO;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = NO;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = NO;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = NO;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = NO;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = NO;
                            emailsSentTodayUnidadDeMillon9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayUnidadDeMillon0.hidden = YES;
                            emailsSentTodayUnidadDeMillon1.hidden = YES;
                            emailsSentTodayUnidadDeMillon2.hidden = YES;
                            emailsSentTodayUnidadDeMillon3.hidden = YES;
                            emailsSentTodayUnidadDeMillon4.hidden = YES;
                            emailsSentTodayUnidadDeMillon5.hidden = YES;
                            emailsSentTodayUnidadDeMillon6.hidden = YES;
                            emailsSentTodayUnidadDeMillon7.hidden = YES;
                            emailsSentTodayUnidadDeMillon8.hidden = YES;
                            emailsSentTodayUnidadDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinUnidadDeMillon:rotations + 1 number:rotations];
                    }];
}



- (void) emailsSentTodaySpinDecenaDeMillon: (int) rotations 
                                        number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: emailsSentTodayDecenaDeMillon
                      duration: SPIN_DURATION_DECENA_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            emailsSentTodayDecenaDeMillon0.hidden = NO;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==1){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = NO;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==2){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = NO;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==3){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = NO;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==4){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = NO;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==5){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = NO;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==6){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = NO;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==7){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = NO;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==8){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = NO;
                            emailsSentTodayDecenaDeMillon9.hidden = YES;
                        }else if (num==9){
                            emailsSentTodayDecenaDeMillon0.hidden = YES;
                            emailsSentTodayDecenaDeMillon1.hidden = YES;
                            emailsSentTodayDecenaDeMillon2.hidden = YES;
                            emailsSentTodayDecenaDeMillon3.hidden = YES;
                            emailsSentTodayDecenaDeMillon4.hidden = YES;
                            emailsSentTodayDecenaDeMillon5.hidden = YES;
                            emailsSentTodayDecenaDeMillon6.hidden = YES;
                            emailsSentTodayDecenaDeMillon7.hidden = YES;
                            emailsSentTodayDecenaDeMillon8.hidden = YES;
                            emailsSentTodayDecenaDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self emailsSentTodaySpinDecenaDeMillon:rotations + 1 number:rotations];
                    }];
}




//Campaings Sent Today code !*************************************************************************************************************************


// Campaings Sent Today spin unidad

- (void) campaingsSentTodaySpinUnidad: (int) rotations 
                            number: (int) num
                       totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: campaingsSentTodayUnidad
                      duration: SPIN_DURATION_UNIDAD
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            campaingsSentTodayUnidad0.hidden = NO;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==1){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = NO;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==2){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = NO;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==3){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = NO;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==4){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = NO;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==5){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = NO;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==6){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = NO;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==7){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = NO;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==8){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = NO;
                            campaingsSentTodayUnidad9.hidden = YES;
                        }else if (num==9){
                            campaingsSentTodayUnidad0.hidden = YES;
                            campaingsSentTodayUnidad1.hidden = YES;
                            campaingsSentTodayUnidad2.hidden = YES;
                            campaingsSentTodayUnidad3.hidden = YES;
                            campaingsSentTodayUnidad4.hidden = YES;
                            campaingsSentTodayUnidad5.hidden = YES;
                            campaingsSentTodayUnidad6.hidden = YES;
                            campaingsSentTodayUnidad7.hidden = YES;
                            campaingsSentTodayUnidad8.hidden = YES;
                            campaingsSentTodayUnidad9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self campaingsSentTodaySpinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                    }];
}


- (void) campaingsSentTodaySpinDecena: (int) rotations 
                            number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: campaingsSentTodayDecena
                      duration: SPIN_DURATION_DECENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            campaingsSentTodayDecena0.hidden = NO;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==1){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = NO;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==2){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = NO;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==3){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = NO;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==4){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = NO;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==5){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = NO;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==6){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = NO;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==7){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = NO;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==8){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = NO;
                            campaingsSentTodayDecena9.hidden = YES;
                        }else if (num==9){
                            campaingsSentTodayDecena0.hidden = YES;
                            campaingsSentTodayDecena1.hidden = YES;
                            campaingsSentTodayDecena2.hidden = YES;
                            campaingsSentTodayDecena3.hidden = YES;
                            campaingsSentTodayDecena4.hidden = YES;
                            campaingsSentTodayDecena5.hidden = YES;
                            campaingsSentTodayDecena6.hidden = YES;
                            campaingsSentTodayDecena7.hidden = YES;
                            campaingsSentTodayDecena8.hidden = YES;
                            campaingsSentTodayDecena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self campaingsSentTodaySpinDecena:rotations + 1 number:rotations];
                    }];
}


- (void) campaingsSentTodaySpinCentena: (int) rotations 
                             number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: campaingsSentTodayCentena
                      duration: SPIN_DURATION_CENTENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            campaingsSentTodayCentena0.hidden = NO;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==1){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = NO;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==2){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = NO;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==3){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = NO;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==4){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = NO;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==5){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = NO;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==6){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = NO;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==7){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = NO;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==8){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = NO;
                            campaingsSentTodayCentena9.hidden = YES;
                        }else if (num==9){
                            campaingsSentTodayCentena0.hidden = YES;
                            campaingsSentTodayCentena1.hidden = YES;
                            campaingsSentTodayCentena2.hidden = YES;
                            campaingsSentTodayCentena3.hidden = YES;
                            campaingsSentTodayCentena4.hidden = YES;
                            campaingsSentTodayCentena5.hidden = YES;
                            campaingsSentTodayCentena6.hidden = YES;
                            campaingsSentTodayCentena7.hidden = YES;
                            campaingsSentTodayCentena8.hidden = YES;
                            campaingsSentTodayCentena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self campaingsSentTodaySpinCentena:rotations + 1 number:rotations];
                    }];
}

- (void) campaingsSentTodaySpinUnidadDeMil: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: campaingsSentTodayUnidadDeMil
                      duration: SPIN_DURATION_UNIDAD_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            campaingsSentTodayUnidadDeMil0.hidden = NO;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==1){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = NO;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==2){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = NO;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==3){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = NO;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==4){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = NO;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==5){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = NO;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==6){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = NO;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==7){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = NO;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==8){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = NO;
                            campaingsSentTodayUnidadDeMil9.hidden = YES;
                        }else if (num==9){
                            campaingsSentTodayUnidadDeMil0.hidden = YES;
                            campaingsSentTodayUnidadDeMil1.hidden = YES;
                            campaingsSentTodayUnidadDeMil2.hidden = YES;
                            campaingsSentTodayUnidadDeMil3.hidden = YES;
                            campaingsSentTodayUnidadDeMil4.hidden = YES;
                            campaingsSentTodayUnidadDeMil5.hidden = YES;
                            campaingsSentTodayUnidadDeMil6.hidden = YES;
                            campaingsSentTodayUnidadDeMil7.hidden = YES;
                            campaingsSentTodayUnidadDeMil8.hidden = YES;
                            campaingsSentTodayUnidadDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self campaingsSentTodaySpinUnidadDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) campaingsSentTodaySpinDecenaDeMil: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: campaingsSentTodayDecenaDeMil
                      duration: SPIN_DURATION_DECENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            campaingsSentTodayDecenaDeMil0.hidden = NO;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==1){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = NO;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==2){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = NO;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==3){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = NO;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==4){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = NO;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==5){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = NO;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==6){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = NO;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==7){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = NO;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==8){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = NO;
                            campaingsSentTodayDecenaDeMil9.hidden = YES;
                        }else if (num==9){
                            campaingsSentTodayDecenaDeMil0.hidden = YES;
                            campaingsSentTodayDecenaDeMil1.hidden = YES;
                            campaingsSentTodayDecenaDeMil2.hidden = YES;
                            campaingsSentTodayDecenaDeMil3.hidden = YES;
                            campaingsSentTodayDecenaDeMil4.hidden = YES;
                            campaingsSentTodayDecenaDeMil5.hidden = YES;
                            campaingsSentTodayDecenaDeMil6.hidden = YES;
                            campaingsSentTodayDecenaDeMil7.hidden = YES;
                            campaingsSentTodayDecenaDeMil8.hidden = YES;
                            campaingsSentTodayDecenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self campaingsSentTodaySpinDecenaDeMil:rotations + 1 number:rotations];
                    }];
}

//NOTA: comentado porque no creo que se envien mas de 99.999 campanias de email por día !
//si esto pasa entonces nos tendrían que aumentar el sueldo, no? 

//- (void) campaingsSentTodaySpinCentenaDeMil: (int) rotations 
//                                  number: (int) num
//{
//    if (rotations == 2) return;
//    
//    [UIView transitionWithView: campaingsSentTodayCentenaDeMil
//                      duration: SPIN_DURATION /2
//                       options:  UIViewAnimationOptionTransitionFlipFromRight
//                    animations: ^{
//                        if(num==0){
//                            campaingsSentTodayCentenaDeMil0.hidden = NO;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==1){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = NO;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==2){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = NO;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==3){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = NO;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==4){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = NO;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==5){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = NO;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==6){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = NO;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==7){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = NO;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==8){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = NO;
//                            campaingsSentTodayCentenaDeMil9.hidden = YES;
//                        }else if (num==9){
//                            campaingsSentTodayCentenaDeMil0.hidden = YES;
//                            campaingsSentTodayCentenaDeMil1.hidden = YES;
//                            campaingsSentTodayCentenaDeMil2.hidden = YES;
//                            campaingsSentTodayCentenaDeMil3.hidden = YES;
//                            campaingsSentTodayCentenaDeMil4.hidden = YES;
//                            campaingsSentTodayCentenaDeMil5.hidden = YES;
//                            campaingsSentTodayCentenaDeMil6.hidden = YES;
//                            campaingsSentTodayCentenaDeMil7.hidden = YES;
//                            campaingsSentTodayCentenaDeMil8.hidden = YES;
//                            campaingsSentTodayCentenaDeMil9.hidden = NO;
//                        }
//                    }
//                    completion: ^(BOOL finished) {
//                        
//                        [self campaingsSentTodaySpinCentenaDeMil:rotations + 1 number:rotations];
//                    }];
//}
//
//
//
//
//- (void) campaingsSentTodaySpinUnidadDeMillon: (int) rotations 
//                                    number: (int) num
//{
//    if (rotations == 2) return;
//    
//    [UIView transitionWithView: campaingsSentTodayUnidadDeMillon
//                      duration: SPIN_DURATION /2
//                       options:  UIViewAnimationOptionTransitionFlipFromRight
//                    animations: ^{
//                        if(num==0){
//                            campaingsSentTodayUnidadDeMillon0.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==1){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==2){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==3){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==4){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==5){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==6){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==7){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==8){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = NO;
//                            campaingsSentTodayUnidadDeMillon9.hidden = YES;
//                        }else if (num==9){
//                            campaingsSentTodayUnidadDeMillon0.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon1.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon2.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon3.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon4.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon5.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon6.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon7.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon8.hidden = YES;
//                            campaingsSentTodayUnidadDeMillon9.hidden = NO;
//                        }
//                    }
//                    completion: ^(BOOL finished) {
//                        
//                        [self campaingsSentTodaySpinUnidadDeMillon:rotations + 1 number:rotations];
//                    }];
//}
//
//
//
//- (void) campaingsSentTodaySpinDecenaDeMillon: (int) rotations 
//                                    number: (int) num
//{
//    if (rotations == 2) return;
//    
//    [UIView transitionWithView: campaingsSentTodayDecenaDeMillon
//                      duration: SPIN_DURATION /2
//                       options:  UIViewAnimationOptionTransitionFlipFromRight
//                    animations: ^{
//                        if(num==0){
//                            campaingsSentTodayDecenaDeMillon0.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==1){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==2){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==3){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==4){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==5){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==6){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==7){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==8){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = NO;
//                            campaingsSentTodayDecenaDeMillon9.hidden = YES;
//                        }else if (num==9){
//                            campaingsSentTodayDecenaDeMillon0.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon1.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon2.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon3.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon4.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon5.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon6.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon7.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon8.hidden = YES;
//                            campaingsSentTodayDecenaDeMillon9.hidden = NO;
//                        }
//                    }
//                    completion: ^(BOOL finished) {
//                        
//                        [self campaingsSentTodaySpinDecenaDeMillon:rotations + 1 number:rotations];
//                    }];
//}
//









//History Emails Sent  code !*************************************************************************************************************************

- (void) historyEmailsSentSpinUnidad: (int) rotations 
                            number: (int) num
                       totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: historyEmailsSentUnidad
                      duration: SPIN_DURATION_UNIDAD
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentUnidad0.hidden = NO;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = NO;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = NO;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = NO;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = NO;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = NO;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = NO;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = NO;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = NO;
                            historyEmailsSentUnidad9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentUnidad0.hidden = YES;
                            historyEmailsSentUnidad1.hidden = YES;
                            historyEmailsSentUnidad2.hidden = YES;
                            historyEmailsSentUnidad3.hidden = YES;
                            historyEmailsSentUnidad4.hidden = YES;
                            historyEmailsSentUnidad5.hidden = YES;
                            historyEmailsSentUnidad6.hidden = YES;
                            historyEmailsSentUnidad7.hidden = YES;
                            historyEmailsSentUnidad8.hidden = YES;
                            historyEmailsSentUnidad9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                    }];
}


- (void) historyEmailsSentSpinDecena: (int) rotations 
                            number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentDecena
                      duration: SPIN_DURATION_DECENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentDecena0.hidden = NO;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = NO;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = NO;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = NO;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = NO;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = NO;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = NO;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = NO;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = NO;
                            historyEmailsSentDecena9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentDecena0.hidden = YES;
                            historyEmailsSentDecena1.hidden = YES;
                            historyEmailsSentDecena2.hidden = YES;
                            historyEmailsSentDecena3.hidden = YES;
                            historyEmailsSentDecena4.hidden = YES;
                            historyEmailsSentDecena5.hidden = YES;
                            historyEmailsSentDecena6.hidden = YES;
                            historyEmailsSentDecena7.hidden = YES;
                            historyEmailsSentDecena8.hidden = YES;
                            historyEmailsSentDecena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinDecena:rotations + 1 number:rotations];
                    }];
}


- (void) historyEmailsSentSpinCentena: (int) rotations 
                             number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentCentena
                      duration: SPIN_DURATION_CENTENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentCentena0.hidden = NO;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = NO;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = NO;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = NO;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = NO;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = NO;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = NO;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = NO;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = NO;
                            historyEmailsSentCentena9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentCentena0.hidden = YES;
                            historyEmailsSentCentena1.hidden = YES;
                            historyEmailsSentCentena2.hidden = YES;
                            historyEmailsSentCentena3.hidden = YES;
                            historyEmailsSentCentena4.hidden = YES;
                            historyEmailsSentCentena5.hidden = YES;
                            historyEmailsSentCentena6.hidden = YES;
                            historyEmailsSentCentena7.hidden = YES;
                            historyEmailsSentCentena8.hidden = YES;
                            historyEmailsSentCentena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinCentena:rotations + 1 number:rotations];
                    }];
}

- (void) historyEmailsSentSpinUnidadDeMil: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentUnidadDeMil
                      duration: SPIN_DURATION_UNIDAD_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentUnidadDeMil0.hidden = NO;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = NO;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = NO;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = NO;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = NO;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = NO;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = NO;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = NO;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = NO;
                            historyEmailsSentUnidadDeMil9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentUnidadDeMil0.hidden = YES;
                            historyEmailsSentUnidadDeMil1.hidden = YES;
                            historyEmailsSentUnidadDeMil2.hidden = YES;
                            historyEmailsSentUnidadDeMil3.hidden = YES;
                            historyEmailsSentUnidadDeMil4.hidden = YES;
                            historyEmailsSentUnidadDeMil5.hidden = YES;
                            historyEmailsSentUnidadDeMil6.hidden = YES;
                            historyEmailsSentUnidadDeMil7.hidden = YES;
                            historyEmailsSentUnidadDeMil8.hidden = YES;
                            historyEmailsSentUnidadDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinUnidadDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) historyEmailsSentSpinDecenaDeMil: (int) rotations 
                                 number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentDecenaDeMil
                      duration: SPIN_DURATION_DECENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentDecenaDeMil0.hidden = NO;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = NO;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = NO;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = NO;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = NO;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = NO;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = NO;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = NO;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = NO;
                            historyEmailsSentDecenaDeMil9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentDecenaDeMil0.hidden = YES;
                            historyEmailsSentDecenaDeMil1.hidden = YES;
                            historyEmailsSentDecenaDeMil2.hidden = YES;
                            historyEmailsSentDecenaDeMil3.hidden = YES;
                            historyEmailsSentDecenaDeMil4.hidden = YES;
                            historyEmailsSentDecenaDeMil5.hidden = YES;
                            historyEmailsSentDecenaDeMil6.hidden = YES;
                            historyEmailsSentDecenaDeMil7.hidden = YES;
                            historyEmailsSentDecenaDeMil8.hidden = YES;
                            historyEmailsSentDecenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinDecenaDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) historyEmailsSentSpinCentenaDeMil: (int) rotations 
                                  number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentCentenaDeMil
                      duration: SPIN_DURATION_CENTENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentCentenaDeMil0.hidden = NO;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = NO;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = NO;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = NO;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = NO;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = NO;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = NO;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = NO;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = NO;
                            historyEmailsSentCentenaDeMil9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentCentenaDeMil0.hidden = YES;
                            historyEmailsSentCentenaDeMil1.hidden = YES;
                            historyEmailsSentCentenaDeMil2.hidden = YES;
                            historyEmailsSentCentenaDeMil3.hidden = YES;
                            historyEmailsSentCentenaDeMil4.hidden = YES;
                            historyEmailsSentCentenaDeMil5.hidden = YES;
                            historyEmailsSentCentenaDeMil6.hidden = YES;
                            historyEmailsSentCentenaDeMil7.hidden = YES;
                            historyEmailsSentCentenaDeMil8.hidden = YES;
                            historyEmailsSentCentenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinCentenaDeMil:rotations + 1 number:rotations];
                    }];
}




- (void) historyEmailsSentSpinUnidadDeMillon: (int) rotations 
                                    number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentUnidadDeMillon
                      duration: SPIN_DURATION_UNIDAD_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentUnidadDeMillon0.hidden = NO;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = NO;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = NO;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = NO;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = NO;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = NO;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = NO;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = NO;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = NO;
                            historyEmailsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentUnidadDeMillon0.hidden = YES;
                            historyEmailsSentUnidadDeMillon1.hidden = YES;
                            historyEmailsSentUnidadDeMillon2.hidden = YES;
                            historyEmailsSentUnidadDeMillon3.hidden = YES;
                            historyEmailsSentUnidadDeMillon4.hidden = YES;
                            historyEmailsSentUnidadDeMillon5.hidden = YES;
                            historyEmailsSentUnidadDeMillon6.hidden = YES;
                            historyEmailsSentUnidadDeMillon7.hidden = YES;
                            historyEmailsSentUnidadDeMillon8.hidden = YES;
                            historyEmailsSentUnidadDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinUnidadDeMillon:rotations + 1 number:rotations];
                    }];
}



- (void) historyEmailsSentSpinDecenaDeMillon: (int) rotations 
                                    number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyEmailsSentDecenaDeMillon
                      duration: SPIN_DURATION_DECENA_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyEmailsSentDecenaDeMillon0.hidden = NO;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==1){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = NO;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==2){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = NO;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==3){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = NO;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==4){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = NO;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==5){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = NO;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==6){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = NO;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==7){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = NO;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==8){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = NO;
                            historyEmailsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==9){
                            historyEmailsSentDecenaDeMillon0.hidden = YES;
                            historyEmailsSentDecenaDeMillon1.hidden = YES;
                            historyEmailsSentDecenaDeMillon2.hidden = YES;
                            historyEmailsSentDecenaDeMillon3.hidden = YES;
                            historyEmailsSentDecenaDeMillon4.hidden = YES;
                            historyEmailsSentDecenaDeMillon5.hidden = YES;
                            historyEmailsSentDecenaDeMillon6.hidden = YES;
                            historyEmailsSentDecenaDeMillon7.hidden = YES;
                            historyEmailsSentDecenaDeMillon8.hidden = YES;
                            historyEmailsSentDecenaDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyEmailsSentSpinDecenaDeMillon:rotations + 1 number:rotations];
                    }];
}





//History Campaigns Sent  code !*************************************************************************************************************************

- (void) historyCampaingsSentSpinUnidad: (int) rotations 
                              number: (int) num
                         totalCiclos: (int) totalCiclos
{
    
    if (rotations == totalCiclos) {
        return;
    }    
    
    
    [UIView transitionWithView: historyCampaingsSentUnidad
                      duration: SPIN_DURATION_UNIDAD
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentUnidad0.hidden = NO;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = NO;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = NO;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = NO;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = NO;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = NO;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = NO;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = NO;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = NO;
                            historyCampaingsSentUnidad9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentUnidad0.hidden = YES;
                            historyCampaingsSentUnidad1.hidden = YES;
                            historyCampaingsSentUnidad2.hidden = YES;
                            historyCampaingsSentUnidad3.hidden = YES;
                            historyCampaingsSentUnidad4.hidden = YES;
                            historyCampaingsSentUnidad5.hidden = YES;
                            historyCampaingsSentUnidad6.hidden = YES;
                            historyCampaingsSentUnidad7.hidden = YES;
                            historyCampaingsSentUnidad8.hidden = YES;
                            historyCampaingsSentUnidad9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinUnidad:rotations + 1 number:num + 1 totalCiclos:totalCiclos];
                    }];
}


- (void) historyCampaingsSentSpinDecena: (int) rotations 
                              number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentDecena
                      duration: SPIN_DURATION_DECENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentDecena0.hidden = NO;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = NO;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = NO;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = NO;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = NO;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = NO;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = NO;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = NO;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = NO;
                            historyCampaingsSentDecena9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentDecena0.hidden = YES;
                            historyCampaingsSentDecena1.hidden = YES;
                            historyCampaingsSentDecena2.hidden = YES;
                            historyCampaingsSentDecena3.hidden = YES;
                            historyCampaingsSentDecena4.hidden = YES;
                            historyCampaingsSentDecena5.hidden = YES;
                            historyCampaingsSentDecena6.hidden = YES;
                            historyCampaingsSentDecena7.hidden = YES;
                            historyCampaingsSentDecena8.hidden = YES;
                            historyCampaingsSentDecena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinDecena:rotations + 1 number:rotations];
                    }];
}


- (void) historyCampaingsSentSpinCentena: (int) rotations 
                               number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentCentena
                      duration: SPIN_DURATION_CENTENA
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentCentena0.hidden = NO;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = NO;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = NO;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = NO;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = NO;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = NO;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = NO;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = NO;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = NO;
                            historyCampaingsSentCentena9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentCentena0.hidden = YES;
                            historyCampaingsSentCentena1.hidden = YES;
                            historyCampaingsSentCentena2.hidden = YES;
                            historyCampaingsSentCentena3.hidden = YES;
                            historyCampaingsSentCentena4.hidden = YES;
                            historyCampaingsSentCentena5.hidden = YES;
                            historyCampaingsSentCentena6.hidden = YES;
                            historyCampaingsSentCentena7.hidden = YES;
                            historyCampaingsSentCentena8.hidden = YES;
                            historyCampaingsSentCentena9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinCentena:rotations + 1 number:rotations];
                    }];
}

- (void) historyCampaingsSentSpinUnidadDeMil: (int) rotations 
                                   number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentUnidadDeMil
                      duration: SPIN_DURATION_UNIDAD_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentUnidadDeMil0.hidden = NO;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = NO;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = NO;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = NO;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = NO;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = NO;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = NO;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = NO;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = NO;
                            historyCampaingsSentUnidadDeMil9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentUnidadDeMil0.hidden = YES;
                            historyCampaingsSentUnidadDeMil1.hidden = YES;
                            historyCampaingsSentUnidadDeMil2.hidden = YES;
                            historyCampaingsSentUnidadDeMil3.hidden = YES;
                            historyCampaingsSentUnidadDeMil4.hidden = YES;
                            historyCampaingsSentUnidadDeMil5.hidden = YES;
                            historyCampaingsSentUnidadDeMil6.hidden = YES;
                            historyCampaingsSentUnidadDeMil7.hidden = YES;
                            historyCampaingsSentUnidadDeMil8.hidden = YES;
                            historyCampaingsSentUnidadDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinUnidadDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) historyCampaingsSentSpinDecenaDeMil: (int) rotations 
                                   number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentDecenaDeMil
                      duration: SPIN_DURATION_DECENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentDecenaDeMil0.hidden = NO;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = NO;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = NO;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = NO;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = NO;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = NO;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = NO;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = NO;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = NO;
                            historyCampaingsSentDecenaDeMil9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentDecenaDeMil0.hidden = YES;
                            historyCampaingsSentDecenaDeMil1.hidden = YES;
                            historyCampaingsSentDecenaDeMil2.hidden = YES;
                            historyCampaingsSentDecenaDeMil3.hidden = YES;
                            historyCampaingsSentDecenaDeMil4.hidden = YES;
                            historyCampaingsSentDecenaDeMil5.hidden = YES;
                            historyCampaingsSentDecenaDeMil6.hidden = YES;
                            historyCampaingsSentDecenaDeMil7.hidden = YES;
                            historyCampaingsSentDecenaDeMil8.hidden = YES;
                            historyCampaingsSentDecenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinDecenaDeMil:rotations + 1 number:rotations];
                    }];
}

- (void) historyCampaingsSentSpinCentenaDeMil: (int) rotations 
                                    number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentCentenaDeMil
                      duration: SPIN_DURATION_CENTENA_DE_MIL
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentCentenaDeMil0.hidden = NO;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = NO;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = NO;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = NO;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = NO;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = NO;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = NO;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = NO;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = NO;
                            historyCampaingsSentCentenaDeMil9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentCentenaDeMil0.hidden = YES;
                            historyCampaingsSentCentenaDeMil1.hidden = YES;
                            historyCampaingsSentCentenaDeMil2.hidden = YES;
                            historyCampaingsSentCentenaDeMil3.hidden = YES;
                            historyCampaingsSentCentenaDeMil4.hidden = YES;
                            historyCampaingsSentCentenaDeMil5.hidden = YES;
                            historyCampaingsSentCentenaDeMil6.hidden = YES;
                            historyCampaingsSentCentenaDeMil7.hidden = YES;
                            historyCampaingsSentCentenaDeMil8.hidden = YES;
                            historyCampaingsSentCentenaDeMil9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinCentenaDeMil:rotations + 1 number:rotations];
                    }];
}




- (void) historyCampaingsSentSpinUnidadDeMillon: (int) rotations 
                                      number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentUnidadDeMillon
                      duration: SPIN_DURATION_UNIDAD_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentUnidadDeMillon0.hidden = NO;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = NO;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = NO;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = NO;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = NO;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = NO;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = NO;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = NO;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = NO;
                            historyCampaingsSentUnidadDeMillon9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentUnidadDeMillon0.hidden = YES;
                            historyCampaingsSentUnidadDeMillon1.hidden = YES;
                            historyCampaingsSentUnidadDeMillon2.hidden = YES;
                            historyCampaingsSentUnidadDeMillon3.hidden = YES;
                            historyCampaingsSentUnidadDeMillon4.hidden = YES;
                            historyCampaingsSentUnidadDeMillon5.hidden = YES;
                            historyCampaingsSentUnidadDeMillon6.hidden = YES;
                            historyCampaingsSentUnidadDeMillon7.hidden = YES;
                            historyCampaingsSentUnidadDeMillon8.hidden = YES;
                            historyCampaingsSentUnidadDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinUnidadDeMillon:rotations + 1 number:rotations];
                    }];
}



- (void) historyCampaingsSentSpinDecenaDeMillon: (int) rotations 
                                      number: (int) num
{
    if (rotations == 2) return;
    
    [UIView transitionWithView: historyCampaingsSentDecenaDeMillon
                      duration: SPIN_DURATION_DECENA_DE_MILLON
                       options:  UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        if(num==0){
                            historyCampaingsSentDecenaDeMillon0.hidden = NO;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==1){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = NO;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==2){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = NO;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==3){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = NO;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==4){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = NO;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==5){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = NO;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==6){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = NO;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==7){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = NO;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==8){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = NO;
                            historyCampaingsSentDecenaDeMillon9.hidden = YES;
                        }else if (num==9){
                            historyCampaingsSentDecenaDeMillon0.hidden = YES;
                            historyCampaingsSentDecenaDeMillon1.hidden = YES;
                            historyCampaingsSentDecenaDeMillon2.hidden = YES;
                            historyCampaingsSentDecenaDeMillon3.hidden = YES;
                            historyCampaingsSentDecenaDeMillon4.hidden = YES;
                            historyCampaingsSentDecenaDeMillon5.hidden = YES;
                            historyCampaingsSentDecenaDeMillon6.hidden = YES;
                            historyCampaingsSentDecenaDeMillon7.hidden = YES;
                            historyCampaingsSentDecenaDeMillon8.hidden = YES;
                            historyCampaingsSentDecenaDeMillon9.hidden = NO;
                        }
                    }
                    completion: ^(BOOL finished) {
                        
                        [self historyCampaingsSentSpinDecenaDeMillon:rotations + 1 number:rotations];
                    }];
}



















@end
