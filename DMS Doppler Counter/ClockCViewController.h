//
//  ClockCViewController.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 05/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClockCViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *clockDValue;
@property (weak, nonatomic) IBOutlet UIImageView *needleD;

@property (weak, nonatomic) IBOutlet UILabel *clockEValue;
@property (weak, nonatomic) IBOutlet UIImageView *needleE;

@end
