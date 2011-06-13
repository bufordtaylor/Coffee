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

#import "CoffeeModels.h"
#import "CoffeeCoreData.h"


@implementation CuppingListViewController

@synthesize aTableView, numberOfSamples, currentSession;


-(void) setupCellArrayWithSkeleton {
    
    static NSString* aCell = @"CuppingListTableCell";
    
    for (int i = 0; i < numberOfSamples; i++) {
        CuppingListTableCell* cell = [[[CuppingListTableCell alloc] initWithReuseIdentifier:aCell] autorelease];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.tag = i;
        [cell.notesButton addTarget:self action:@selector(showPopover:event:) forControlEvents:UIControlEventTouchUpInside];
        [cellArray addObject:cell];
    }
}

#pragma mark - Table lifecycle

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    return 110; 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return numberOfSamples;
}

- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell forRowAtIndexPath: (NSIndexPath*)indexPath
{
    UIColor* bgColor = indexPath.row % 2 
    ? [UIColor colorWithRed:0.666667 green:0.650980 blue:0.494118 alpha: 1.0] 
    : [UIColor colorWithRed:0.349020 green:0.341176 blue:0.250980 alpha:1.0];
    cell.backgroundColor = bgColor;
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return (CuppingListTableCell*)[cellArray objectAtIndex:indexPath.row];
}

-(void)valueSelected:(NSString *)val referenceSender:(id)sender {
    DLog(@"what's calling this");
}

- (void)tableView:(UITableView *)tView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - button actions

-(IBAction)cancelButtonTappedFromToolbar{
    [currentSession deleteInContext:[Services moc]];
    [self dismissModalViewControllerAnimated:YES];    
}

-(IBAction)saveButtonTappedFromToolbar{
    CoffeeCoreData* dataSource = [(CoffeeAppDelegate*)[[UIApplication sharedApplication] delegate] dataSource];
    
    for (int i = 0; i < numberOfSamples; i++) {
        CuppingListTableCell* cell = (CuppingListTableCell*)[cellArray objectAtIndex:i];
        Coffees* coffee = [Coffees createInContext:dataSource.managedObjectContext];
        coffee.name = [cell nameTextField].text;
        coffee.notes = [cell notesTextField].text;
        coffee.descriptions = [cell notesTextView].text;
        
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterDecimalStyle];
        NSNumber * myNumber = [f numberFromString:[cell scoreTextField].text];
        [f release];
        coffee.score = myNumber;
    }
    
    
//    Wheels* wheel = [Wheels createInContext:dataSource.managedObjectContext];
//    wheel.position = [NSNumber numberWithInt:89];
//    wheel.wheel_group = [NSNumber numberWithInt:1];
//    wheel.red = [NSNumber numberWithFloat:0.929412];
//    wheel.blue = [NSNumber numberWithFloat:0.141176];
//    wheel.green = [NSNumber numberWithFloat:0.109804];
//    wheel.name = @"Sugar Browning";
    [dataSource.managedObjectContext save];
    
    
    NSArray* arr = [Coffees findAllInContext:dataSource.managedObjectContext];
    for (Coffees* c in arr) {
        DLog(@"arry c name %@", c.name);
    }

    
    
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
    
    //Hack to make the keyboard go away
    CuppingListTableCell* cell = (CuppingListTableCell*)[aTableView cellForRowAtIndexPath:anIndexPath];
    [[cell notesTextView] resignFirstResponder];
    [[cell scoreTextField] resignFirstResponder];
    [[cell nameTextField] resignFirstResponder];
    
    [self.view endEditing:TRUE];
  
    UIButton* button = (UIButton*) sender;
    [button becomeFirstResponder];
    
    
    descriptorViewController = [[DescriptorsViewController alloc] init];
    popController = [[UIPopoverController alloc] initWithContentViewController:descriptorViewController];               
    //size of the popover
    popController.popoverContentSize = CGSizeMake(690, 740);
    

    [popController presentPopoverFromRect:[button frame] inView:[button superview] 
                           permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES]; 
    
    [descriptorViewController.saveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
    [descriptorViewController.cancelButton addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - init


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        DLog(@"initing cupping list");
        cellArray = [[NSMutableArray alloc] initWithCapacity:numberOfSamples];
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
    
    [self setupCellArrayWithSkeleton];
    
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
