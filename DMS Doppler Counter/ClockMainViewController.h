//
//  ClockMainViewController.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 23/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageControl.h"

@interface ClockMainViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end
