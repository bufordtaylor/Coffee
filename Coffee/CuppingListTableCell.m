//
//  CuppingListTableCell.m
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CuppingListTableCell.h"


@implementation CuppingListTableCell

@synthesize notesButton, notesTextView, scoreTextField, nameTextField;

-(id) initWithReuseIdentifier:(NSString*)ri {
	if ((self = [super initWithCellNib:@"CuppingListTableCell" reuseIdentifier:ri])) {
		DLog(@"CuppingListTableCell init");
	}
	return self;
}

-(void) dealloc {
	[nameTextField release];
    [scoreTextField release];
    [notesTextView release];
    [notesButton release];
	[super dealloc];
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
