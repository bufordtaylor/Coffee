//
//  CuppingListTableCell.m
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CuppingListTableCell.h"
#import <QuartzCore/QuartzCore.h>


@implementation CuppingListTableCell

@synthesize notesButton, notesTextView, scoreTextField, nameTextField, notesTextField;

-(id) initWithReuseIdentifier:(NSString*)ri {
	if ((self = [super initWithCellNib:@"CuppingListTableCell" reuseIdentifier:ri])) {
		DLog(@"CuppingListTableCell init");
        notesTextView.layer.cornerRadius = 5.0;
        notesTextView.layer.borderWidth = 1.0f;
        notesTextView.layer.borderColor = [[UIColor grayColor] CGColor];
        notesTextView.clipsToBounds = YES;
	}
	return self;
}

-(void) dealloc {
	[nameTextField release];
    [scoreTextField release];
    [notesTextView release];
    [notesButton release];
    [notesTextField release];
	[super dealloc];
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}



@end
