//
//  ClockBViewController.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 05/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClockBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *clockBValue;
@property (weak, nonatomic) IBOutlet UIImageView *needleB;


@property (weak, nonatomic) IBOutlet UILabel *clockCValue;
@property (weak, nonatomic) IBOutlet UIImageView *needleC;

@end
