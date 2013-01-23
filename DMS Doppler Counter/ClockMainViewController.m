//
//  ClockMainViewController.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 23/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClockMainViewController.h"

PageControl *pageControl;

@interface ClockMainViewController ()
@property (assign) NSUInteger page;
@end

@implementation ClockMainViewController
@synthesize scrollView = _scrollView;
@synthesize page = _page;


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int pageX = floor(scrollView.contentOffset.x / [UIScreen mainScreen].bounds.size.width);
    [pageControl setCurrentPage:pageX];
}

- (void)loadScrollViewWithPage:(int)page {
    if (page < 0)
        return;
    if (page >= [self.childViewControllers count])
        return;
    
	// replace the placeholder if necessary
    UIViewController *controller = [self.childViewControllers objectAtIndex:page];
    if (controller == nil) {
		return;
    }
	
	// add the controller's view to the scroll view
    if (controller.view.superview == nil) {
        CGRect frame = self.scrollView.frame;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0;
        controller.view.frame = frame;
        [self.scrollView addSubview:controller.view];
    }
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
    
    self.scrollView.delegate=self;
    // Xposition 320 /2 - 120/2 = 100
    int middleScreen = [UIScreen mainScreen].bounds.size.width / 2;
    int heightScreen90 = [UIScreen mainScreen].bounds.size.height;
    CGRect f = CGRectMake(middleScreen -40, heightScreen90 -60, 80, 20); 
    pageControl = [[PageControl alloc] initWithFrame:f];
    [self.view addSubview:pageControl];

    for (NSUInteger i =0; i < [self.childViewControllers count]; i++) {
		[self loadScrollViewWithPage:i];
	}
	
	pageControl.currentPage = 0;
	self.page = 0;
	[pageControl setNumberOfPages:[self.childViewControllers count]];
	
	UIViewController *viewController = [self.childViewControllers objectAtIndex:pageControl.currentPage];
	if (viewController.view.superview != nil) {
		[viewController viewWillAppear:animated];
	}
	
	self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [self.childViewControllers count], self.scrollView.frame.size.height);
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

- (void)viewDidUnload {
    [self setScrollView:nil];
    [super viewDidUnload];
}
@end
