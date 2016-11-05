//
//  ViewController.m
//  AStream
//
//  Created by Peter Boynton on 3/14/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "AppDelegate.h"

#import "ViewController.h"

#import "EventViewController.h"

#import "RegViewController.h"

#import "RecViewController.h"

#import "LiveViewController.h"

#import "GroupViewController.h"

#import "UserVoice.h"

@implementation ViewController


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

        self.title = NSLocalizedString(@"Home", @"Home");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(IBAction)displaySchedView:(id)sender {
    EventViewController *viewController1 = [[EventViewController alloc] initWithNibName:@"WebView1" bundle:nil];
//    CalendarTableViewController *viewController1 = [[CalendarTableViewController alloc] initWithNibName:@"CalendarView" bundle:nil];
    [[self navigationController] pushViewController:viewController1 animated:YES];
}
-(IBAction)displayRegView:(id)sender {
    RegViewController *viewController2 = [[RegViewController alloc] initWithNibName:@"WebView2" bundle:nil];
    [[self navigationController] pushViewController:viewController2 animated:YES];
}
-(IBAction)displayLiveView:(id)sender {
    LiveViewController *viewController3 = [[LiveViewController alloc] initWithNibName:@"WebView3" bundle:nil];
    [[self navigationController] pushViewController:viewController3 animated:YES];
}
-(IBAction)displayNotesView:(id)sender {
    RecViewController *viewController4 = [[RecViewController alloc] initWithNibName:@"WebView4" bundle:nil];
    [[self navigationController] pushViewController:viewController4 animated:YES];
}
-(IBAction)displayHandView:(id)sender {
    GroupViewController *viewController5 = [[GroupViewController alloc] initWithNibName:@"WebView5" bundle:nil];
    [[self navigationController] pushViewController:viewController5 animated:YES];
}
-(IBAction)displayFeedView:(id)sender {
    UVConfig *config = [UVConfig configWithSite:@"firstpentecostalchurch.uservoice.com"
                                         andKey:@"My8DHgHZbMEBSKyUFCjHg"
                                      andSecret:@"bXyn4aVK6kK6lTx662clzu2LJIl2j4YwVGD9jzThooc"];
    
    [UserVoice presentUserVoiceNewIdeaFormForParentViewController:self andConfig:config];
}
-(IBAction)displayHelpView:(id)sender {
    UVConfig *config = [UVConfig configWithSite:@"firstpentecostalchurch.uservoice.com"
                                         andKey:@"My8DHgHZbMEBSKyUFCjHg"
                                      andSecret:@"bXyn4aVK6kK6lTx662clzu2LJIl2j4YwVGD9jzThooc"];
    
    [UserVoice presentUserVoiceInterfaceForParentViewController:self andConfig:config];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
