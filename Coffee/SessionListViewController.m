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

#import "CoffeeModels.h"

@implementation SessionListViewController

@synthesize newSessionButton, cellArray;


#pragma mark - Table lifecycle

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    return 44; 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    int num = [cellArray count];
    if (num < 1) num = 1;
    return num;
}

- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell forRowAtIndexPath: (NSIndexPath*)indexPath
{
    UIColor* bgColor = indexPath.row % 2 
    ? [UIColor colorWithRed:0.937255 green:0.905882 blue:0.678431 alpha:1] 
    : [UIColor colorWithRed:0.698039 green:0.682353 blue:0.517647 alpha:1];
    cell.backgroundColor = bgColor;
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [aTableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                       reuseIdentifier:@"cell"] autorelease];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;

    }
    if ([cellArray count] < 1) {
        cell.textLabel.text = @"No cupping sessions yet";
    } else {
        Sessions* s = (Sessions*)[cellArray objectAtIndex:indexPath.row];
        cell.textLabel.text = s.name;
    }
    return cell;
}

- (void)tableView:(UITableView *)tView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tView deselectRowAtIndexPath:indexPath animated:NO];
}




-(IBAction) clickedNewSessionButton:(id)sender {
    UIBarButtonItem* button = (UIBarButtonItem*)sender;
    newSessionViewController = [[NewSessionViewController alloc] init];
    popController = [[UIPopoverController alloc] initWithContentViewController:newSessionViewController];
    popController.popoverContentSize = CGSizeMake(300, 200);
    
    [popController presentPopoverFromBarButtonItem:button permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    [newSessionViewController.numberOfSamplesButton becomeFirstResponder];
    
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
        
        Sessions* session = [Sessions createInContext:[Services moc]];
        session.date = [[NSDate alloc] init];
        session.name = [newSessionViewController nameOfSessionButton].text;
        viewController.currentSession = session;
        
        
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
    [cellArray release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void) viewWillAppear:(BOOL)animated  {
    [super viewWillAppear:animated];
    
    cellArray = [[NSMutableArray arrayWithArray:[Sessions findAllInContext:[Services moc]]] retain];
    for (Sessions* c in cellArray) {
        DLog(@"arry c name %@", c.name);
    }
    [aTableView reloadData];

    
    
//    for (UITableViewCell *cell in cellArray){
//        cell.textLabel.text = @"
//    }
    
}

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
