//
//  CoffeeViewController.m
//  Coffee
//
//  Created by Buford Taylor on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CoffeeViewController.h"

@implementation CoffeeViewController

@synthesize cuppingView, leftNav, toolBar;
@synthesize scalePicker = _scalePicker;
@synthesize scalePickerPopover = _scalePickerPopover;

-(id) initWithCoder:(NSCoder *)aDecoder {
    
    if (self == [super initWithCoder:aDecoder]) {
        NSLog(@"Starting everything");
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

#pragma mark - Table lifecycle

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 10;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    return 150; 
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Coffee Name %d", section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
//    NSMutableArray* buttonArray = [NSMutableArray arrayWithObjects:@"Aroma",@"Color",@"Clean Cup", @"Sweetness",@"Acidity"
//                                   ,@"Mouthfeel",@"Aftertaste",@"Balance",@"Overall", nil];
    
    NSMutableArray* buttonArray = [NSMutableArray arrayWithObjects:@"Aroma",@"Flavor",@"Aftertaste",@"Overall", nil];
    
    //Specials - Aroma, Color, Name
    
    UITableViewCell *cell = [self.cuppingView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                       reuseIdentifier:@"cell"] autorelease];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        float offset = 0.0;
        
        for(NSString* buttonName in buttonArray) {
            float height = 0.0;
            UIButton *buttonNew = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [buttonNew addTarget:self 
                            action:@selector(aMethod:)
                  forControlEvents:UIControlEventTouchDown];
            [buttonNew setTitle:buttonName forState:UIControlStateNormal];
            [buttonNew sizeToFit];
            [buttonNew setFrame:CGRectMake(offset,height,buttonNew.frame.size.width,buttonNew.frame.size.height)];
            [cell addSubview:buttonNew];
            height = height + buttonNew.frame.size.height;
            
            UILabel* label = [[UILabel alloc] init];
            label.font = [UIFont systemFontOfSize:11.0];
            label.text = [NSString stringWithFormat:@"%@ score", buttonName];
            [label sizeToFit];
            [label setTextColor:[UIColor grayColor]];
            [label setFrame:CGRectMake(offset, height, label.frame.size.width, label.frame.size.height)];
            [cell addSubview:label];
            height = height + label.frame.size.height;
            
            UILabel* noteslabel = [[UILabel alloc] init];
            noteslabel.lineBreakMode = UILineBreakModeTailTruncation;
            noteslabel.numberOfLines = 3;
            noteslabel.font = [UIFont systemFontOfSize:10.0];
            noteslabel.text = @"Fitter, Happier, More Productive, Comfortable, Not Drinking Too Much";
            [noteslabel setTextColor:[UIColor grayColor]];
            [noteslabel setFrame:CGRectMake(offset, height, buttonNew.frame.size.width - 5, 100)];
            [cell addSubview:noteslabel];
            height = height + noteslabel.frame.size.height;
            
            offset = offset + buttonNew.frame.size.width;
        }
        offset = offset + 10;
        
        UILabel* label = [[UILabel alloc] init];
        label.text = @"Score";
        [label sizeToFit];
        [label setFrame:CGRectMake(offset, 0, label.frame.size.width, label.frame.size.height)];
        [cell addSubview:label];
        
        offset = offset + label.frame.size.width + 10;
        
        UITextField *playerTextField = [[UITextField alloc] initWithFrame:CGRectMake(offset, 0, 185, 30)];
        playerTextField.adjustsFontSizeToFitWidth = YES;
        playerTextField.textColor = [UIColor blackColor];
        
        playerTextField.placeholder = @"1-100";
        playerTextField.keyboardType = UIKeyboardTypeNamePhonePad;
        playerTextField.returnKeyType = UIReturnKeyDone;
        playerTextField.backgroundColor = [UIColor whiteColor];
        playerTextField.autocorrectionType = UITextAutocorrectionTypeNo; // no auto correction support
        playerTextField.autocapitalizationType = UITextAutocapitalizationTypeNone; // no auto capitalization support
        playerTextField.textAlignment = UITextAlignmentLeft;
        playerTextField.tag = 0;
        //playerTextField.delegate = self;
        
        playerTextField.clearButtonMode = UITextFieldViewModeNever; // no clear 'x' button to the right
        [playerTextField setEnabled: YES];
        
        [cell addSubview:playerTextField];
    }
//    if ([indexPath section] == 0) { // Email & Password Section
//        if ([indexPath row] == 0) { // Email
//            cell.textLabel.text = @"Coffee Name";
//        }
//        else {
//            cell.textLabel.text = @"Stats";
//        }
//    }
    return cell;    
}

-(void) aMethod:(id)sender {
    UIButton* button = (UIButton*) sender;
    
    if (_scalePicker == nil) {
        self.scalePicker = [[[ScalePopoverPicker alloc] init] autorelease];
        _scalePicker.delegate = self;
        self.scalePickerPopover = [[[UIPopoverController alloc] initWithContentViewController:_scalePicker] autorelease];               
    }
    [self.scalePickerPopover presentPopoverFromRect:[button frame] inView:[button superview] 
                           permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES]; 
                
}

-(void)valueSelected:(NSString *)val referenceSender:(id)sender {
    
}

- (void)tableView:(UITableView *)tView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

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
