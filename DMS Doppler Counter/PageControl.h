//
//  PageControl.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PageControlDelegate;
//@class PageControl;
//
//@protocol PageControlDelegate<NSObject>
//- (void)pageControlPageDidChange:(PageControl *)pageControl;
//@end


@interface PageControl : UIView
{
@private
    NSInteger _currentPage;
    NSInteger _numberOfPages;
    UIColor *dotColorCurrentPage;
    UIColor *dotColorOtherPage;
}


// Set these to control the PageControl.
@property (nonatomic) NSInteger currentPage;
@property (nonatomic) NSInteger numberOfPages;

// Customize these as well as the backgroundColor property.
@property (nonatomic, retain) UIColor *dotColorCurrentPage;
@property (nonatomic, retain) UIColor *dotColorOtherPage;

////protocol
//@property (nonatomic, assign) NSObject<PageControlDelegate> *delegate;


@end
