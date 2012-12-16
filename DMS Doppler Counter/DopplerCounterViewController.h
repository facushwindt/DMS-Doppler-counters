//
//  DopplerCounterViewController.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 06/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DopplerCounterViewController : UIViewController

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


@property (nonatomic, retain) NSTimer *aTimer;




@end
