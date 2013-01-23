//
//  PageControl.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 08/01/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PageControl.h"

// Tweak these or make them dynamic.
#define kDotDiameter 6.0
#define kDotSpacer 8.0

@implementation PageControl
@synthesize dotColorCurrentPage;
@synthesize dotColorOtherPage;
//@synthesize delegate = _delegate;

- (NSInteger)currentPage
{
    return _currentPage;
}


- (void)setCurrentPage:(NSInteger)page
{
    _currentPage = MIN(MAX(0, page), _numberOfPages-1);
    [self setNeedsDisplay];
}


- (NSInteger)numberOfPages
{
    return _numberOfPages;
}

- (void)setNumberOfPages:(NSInteger)pages
{
    _numberOfPages = MAX(0, pages);
    _currentPage = MIN(MAX(0, _currentPage), _numberOfPages-1);
    [self setNeedsDisplay];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        // Default colors.
        self.backgroundColor = [UIColor colorWithRed:0.0-1.0 green:0.0-1.0 blue:0.0-1.0 alpha:0.0f];
        self.dotColorCurrentPage = [UIColor blackColor];
        self.dotColorOtherPage = [UIColor lightGrayColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect 
{
    CGContextRef context = UIGraphicsGetCurrentContext();   
    CGContextSetAllowsAntialiasing(context, true);
    
    CGRect currentBounds = self.bounds;
    CGFloat dotsWidth = self.numberOfPages*kDotDiameter + MAX(0, self.numberOfPages-1)*kDotSpacer;
    CGFloat x = CGRectGetMidX(currentBounds)-dotsWidth/2;
    CGFloat y = CGRectGetMidY(currentBounds)-kDotDiameter/2;
    for (int i=0; i<_numberOfPages; i++)
    {
        CGRect circleRect = CGRectMake(x, y, kDotDiameter, kDotDiameter);
        if (i == _currentPage)
        {
            CGContextSetFillColorWithColor(context, self.dotColorCurrentPage.CGColor);
        }
        else
        {
            CGContextSetFillColorWithColor(context, self.dotColorOtherPage.CGColor);
        }
        CGContextFillEllipseInRect(context, circleRect);
        x += kDotDiameter + kDotSpacer;
    }
}


@end
