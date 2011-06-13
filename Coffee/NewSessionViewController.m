//
//  NewSessionViewController.m
//  Coffee
//
//  Created by Buford Taylor on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewSessionViewController.h"


@implementation NewSessionViewController

@synthesize startSessionButton, numberOfSamplesButton, nameOfSessionButton;

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
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *now = [[[NSDate alloc] init] autorelease];
    
    NSString *theDate = [dateFormat stringFromDate:now];
    
    nameOfSessionButton.text = [NSString stringWithFormat:@"Cupping Session on %@", theDate];
    nameOfSessionButton.clearButtonMode = UITextFieldViewModeWhileEditing;
    [dateFormat release];
    
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
