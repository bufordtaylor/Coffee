//
//  SessionListViewController.m
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SessionListViewController.h"
#import "CuppingListViewController.h"
#import "NewSessionViewController.h"


@implementation SessionListViewController

@synthesize newSessionButton;


-(IBAction) clickedNewSessionButton:(id)sender {
    UIBarButtonItem* button = (UIBarButtonItem*)sender;
    newSessionViewController = [[NewSessionViewController alloc] init];
    popController = [[UIPopoverController alloc] initWithContentViewController:newSessionViewController];
    popController.popoverContentSize = CGSizeMake(300, 200);
    
    [popController presentPopoverFromBarButtonItem:button permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
    [[newSessionViewController startSessionButton] addTarget:self action:@selector(pressedStartSessionButton:) forControlEvents:UIControlEventTouchUpInside];
    

    
}

-(void) pressedStartSessionButton:(id)sender {
    NSString* num = [newSessionViewController numberOfSamplesButton].text;
    int val;
    NSScanner* scan = [NSScanner scannerWithString:num];
    if ([scan scanInt:&val] && [scan isAtEnd]) {
        CuppingListViewController* viewController = [[[CuppingListViewController alloc] init] autorelease];
        viewController.numberOfSamples = val;
        [popController dismissPopoverAnimated:YES];
        [self presentModalViewController:viewController animated:YES];
    } else {
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Value needs to be a valid integer" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        [alertView release];
    }
    
}

#pragma mark - init

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
