//
//  DopplerCounterViewController.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 06/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClockMainViewController.h"


@interface DopplerCounterViewController : ClockMainViewController
@property (weak, nonatomic) IBOutlet UIView *countersPopUpView; // esta es la vista de swipe


//usar decena y centena para Days since start up
@property (weak, nonatomic) IBOutlet UIView *unidad;
@property (weak, nonatomic) IBOutlet UILabel *uni0;
@property (weak, nonatomic) IBOutlet UILabel *uni1;
@property (weak, nonatomic) IBOutlet UILabel *uni2;
@property (weak, nonatomic) IBOutlet UILabel *uni3;
@property (weak, nonatomic) IBOutlet UILabel *uni4;
@property (weak, nonatomic) IBOutlet UILabel *uni5;
@property (weak, nonatomic) IBOutlet UILabel *uni6;
@property (weak, nonatomic) IBOutlet UILabel *uni7;
@property (weak, nonatomic) IBOutlet UILabel *uni8;
@property (weak, nonatomic) IBOutlet UILabel *uni9;


@property (weak, nonatomic) IBOutlet UIView *decena;
@property (weak, nonatomic) IBOutlet UILabel *dec1;
@property (weak, nonatomic) IBOutlet UILabel *dec0;
@property (weak, nonatomic) IBOutlet UILabel *dec2;
@property (weak, nonatomic) IBOutlet UILabel *dec3;
@property (weak, nonatomic) IBOutlet UILabel *dec4;
@property (weak, nonatomic) IBOutlet UILabel *dec5;
@property (weak, nonatomic) IBOutlet UILabel *dec6;
@property (weak, nonatomic) IBOutlet UILabel *dec7;

@property (weak, nonatomic) IBOutlet UILabel *dec8;
@property (weak, nonatomic) IBOutlet UILabel *dec9;




@property (weak, nonatomic) IBOutlet UIView *centena;

@property (weak, nonatomic) IBOutlet UILabel *cen0;
@property (weak, nonatomic) IBOutlet UILabel *cen1;
@property (weak, nonatomic) IBOutlet UILabel *cen2;
@property (weak, nonatomic) IBOutlet UILabel *cen3;
@property (weak, nonatomic) IBOutlet UILabel *cen4;
@property (weak, nonatomic) IBOutlet UILabel *cen5;
@property (weak, nonatomic) IBOutlet UILabel *cen6;
@property (weak, nonatomic) IBOutlet UILabel *cen7;
@property (weak, nonatomic) IBOutlet UILabel *cen8;
@property (weak, nonatomic) IBOutlet UILabel *cen9;

// usar largestSentCampaign para unidad
@property (weak, nonatomic) IBOutlet UIView *largestSentCampaign;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidad9;


//largestSentCampaign decena
@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignDecena;

@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDec9;



//largestSentCampaign centena 
@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignCentena;
//largestSentCampaignCen0
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCen9;

@property (weak, nonatomic) IBOutlet UILabel *LargestSentCampaignFisrtColon;

@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignUnidadDeMil;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil0;

@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMil9;

//largestSentCampaignDecenaDeMil
@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignDecenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMil9;

//largestSentCampaignCentenaDeMil

@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignCentenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignCentenaDeMil9;

@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignSecondColon;

//largestSentCampaignUnidadDeMillon

@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignUnidadDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignUnidadDeMillon9;


//largestSentCampaignDecenaDeMillon
@property (weak, nonatomic) IBOutlet UIView *largestSentCampaignDecenaDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *largestSentCampaignDecenaDeMillon9;

//**********************************************************
//Emails Sent Today
//Emails Sent Today Unidad
@property (weak, nonatomic) IBOutlet UIView *EmailsSentTodayUnidad;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidad9;

//Emails Sent Today decena
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayDecena;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecena9;

//Emails Sent Today centena
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayCentena;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentena9;

//Emails Sent Today unidad de mil
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayUnidadDeMil;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMil9;

//Emails Sent Today decena de mil
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayDecenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMil9;

//Emails Sent Today centena de mil
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayCentenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayCentenaDeMil9;

//Emails Sent Today unidad de millon
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayUnidadDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayUnidadDeMillon9;

//Emails Sent Today decena de millon
@property (weak, nonatomic) IBOutlet UIView *emailsSentTodayDecenaDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayDecenaDeMillon9;


@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodayFisrtColon;
@property (weak, nonatomic) IBOutlet UILabel *emailsSentTodaySecondColon;

//**********************************************************
//Campaings Sent Today
//CampaingsSentTodayUnidad
@property (weak, nonatomic) IBOutlet UIView *campaingsSentTodayUnidad;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad0;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad1;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad2;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad3;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad4;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad5;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad6;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad7;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad8;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidad9;

//campaingsSentTodayDecena
@property (weak, nonatomic) IBOutlet UIView *campaingsSentTodayDecena;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena0;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena1;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena2;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena3;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena4;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena5;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena6;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena7;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena8;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecena9;

//campaingsSentTodayCentena
@property (weak, nonatomic) IBOutlet UIView *campaingsSentTodayCentena;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena0;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena1;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena2;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena3;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena4;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena5;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena6;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena7;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena8;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayCentena9;

//campaingsSentTodayUnidadDeMil
@property (weak, nonatomic) IBOutlet UIView *campaingsSentTodayUnidadDeMil;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayUnidadDeMil9;

//campaingsSentTodayDecenaDeMil
@property (weak, nonatomic) IBOutlet UIView *campaingsSentTodayDecenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayDecenaDeMil9;


@property (weak, nonatomic) IBOutlet UILabel *campaingsSentTodayFirstColon;

//**********************************************************
//History Emails Sent
//historyEmailsSentUnidad sería lo mismo que EmailsSentSinceStartUp que figura en la pag.
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentUnidad;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidad9;

//historyEmailsSentDecena
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentDecena;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecena9;

//historyEmailsSentCentena
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentCentena;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentena9;

//historyEmailsSentUnidadDeMil
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentUnidadDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMil9;

//historyEmailsSentDecenaDeMil
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentDecenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMil9;

//historyEmailsSentCentenaDeMil
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentCentenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentCentenaDeMil9;

//historyEmailsSentUnidadDeMillon
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentUnidadDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentUnidadDeMillon9;

//historyEmailsSentDecenaDeMillon
@property (weak, nonatomic) IBOutlet UIView *historyEmailsSentDecenaDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentDecenaDeMillon9;

@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentFirstColon;
@property (weak, nonatomic) IBOutlet UILabel *historyEmailsSentSecondColon;



//**********************************************************
//History Campaings Sent
//historyCampaingsSentUnidad sería lo mismo que CampaignsSentSinceStartUp que figura en la pag.
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentUnidad;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidad9;

//historyCampaingsSentDecena
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentDecena;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecena9;

//historyCampaingsSentCentena
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentCentena;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentena9;

//historyCampaingsSentUnidadDeMil
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentUnidadDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMil9;

//historyCampaingsSentDecenaDeMil
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentDecenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMil9;

//historyCampaingsSentCentenaDeMil
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentCentenaDeMil;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentCentenaDeMil9;

//historyCampaingsSentUnidadDeMillon
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentUnidadDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentUnidadDeMillon9;

//historyCampaingsSentDecenaDeMillon
@property (weak, nonatomic) IBOutlet UIView *historyCampaingsSentDecenaDeMillon;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon0;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon1;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon2;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon3;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon4;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon5;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon6;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon7;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon8;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaingsSentDecenaDeMillon9;


@property (weak, nonatomic) IBOutlet UILabel *historyCampaignsSentFirstColon;
@property (weak, nonatomic) IBOutlet UILabel *historyCampaignsSentSecondColon;









@property (nonatomic, retain) NSTimer *aTimer;




@end
