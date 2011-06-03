//
//  CuppingListViewController.m
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CuppingListViewController.h"
#import "CuppingListTableCell.h"
#import "DescriptorsViewController.h"


@implementation CuppingListViewController

@synthesize aTableView, numberOfSamples;


#pragma mark - Table lifecycle

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return numberOfSamples;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    return 100; 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString* aCell = @"CuppingListTableCell";
    CuppingListTableCell* cell = (CuppingListTableCell*)[self.aTableView dequeueReusableCellWithIdentifier:aCell];
    if (!cell) {
        cell = [[[CuppingListTableCell alloc] initWithReuseIdentifier:aCell] autorelease];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.notesButton addTarget:self action:@selector(showPopover:event:) forControlEvents:UIControlEventTouchUpInside];
    }
    return cell;
}

-(void)valueSelected:(NSString *)val referenceSender:(id)sender {
    DLog(@"what's calling this");
}

- (void)tableView:(UITableView *)tView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - button actions

-(IBAction)cancelButtonTappedFromToolbar{
    [self dismissModalViewControllerAnimated:YES];    
}


//Save action from popover
- (void)saveAction:(id)sender {
    CuppingListTableCell* cell = (CuppingListTableCell*)[aTableView cellForRowAtIndexPath:anIndexPath];
    [cell notesTextView].text = [descriptorViewController aTextView].text;
    
    [popController dismissPopoverAnimated:YES];
    [descriptorViewController release];
    [popController release];
}


//cancel action from popover
- (void)cancelAction:(id)sender {
    [popController dismissPopoverAnimated:YES];
    [descriptorViewController release];
    [popController release];
}



-(void) showPopover:(id)sender event:(id)event {
    
    // code to find index path to pass onto the popover
    NSSet *touches = [event allTouches];
    UITouch *touch = [touches anyObject];
    CGPoint currentTouchPosition = [touch locationInView:aTableView];
    anIndexPath = [aTableView indexPathForRowAtPoint: currentTouchPosition];
  
    UIButton* button = (UIButton*) sender;
    
    descriptorViewController = [[DescriptorsViewController alloc] init];
    popController = [[UIPopoverController alloc] initWithContentViewController:descriptorViewController];               
    //size of the popover
    popController.popoverContentSize = CGSizeMake(690, 740);
    

    [popController presentPopoverFromRect:[button frame] inView:[button superview] 
                           permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES]; 
    
    [descriptorViewController.saveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
    [descriptorViewController.cancelButton addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
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
    //
    // Create a header view. Wrap it in a container to allow us to position
    // it better.
    //
    UIView *containerView =
    [[[UIView alloc]
      initWithFrame:CGRectMake(0, 0, 600, 60)]
     autorelease];
    UILabel *headerLabel =
    [[[UILabel alloc]
      initWithFrame:CGRectMake(10, 20, 600, 40)]
     autorelease];
    headerLabel.text = NSLocalizedString(@"Cupping Session - {date goes here}", @"");
    headerLabel.textColor = [UIColor blackColor];
    headerLabel.shadowColor = [UIColor whiteColor];
    headerLabel.shadowOffset = CGSizeMake(0, 1);
    headerLabel.font = [UIFont boldSystemFontOfSize:22];
    headerLabel.backgroundColor = [UIColor clearColor];
    [containerView addSubview:headerLabel];
    aTableView.tableHeaderView = containerView;
    
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
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
