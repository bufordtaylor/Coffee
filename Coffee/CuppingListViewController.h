//
//  CuppingListViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DescriptorsViewController.h"
#import "Services.h"

@class Sessions;

@interface CuppingListViewController : UIViewController {
    UIPopoverController* popController;
    UITableView* aTableView;
    NSIndexPath* anIndexPath;
    DescriptorsViewController* descriptorViewController;
    int numberOfSamples;
    
    NSMutableArray* cellArray;
    Sessions* currentSession;
}

@property  (nonatomic, retain) IBOutlet UITableView* aTableView;
@property (readwrite, assign) int numberOfSamples;
@property (readwrite, assign) Sessions* currentSession;

-(IBAction)cancelButtonTappedFromToolbar;
-(IBAction)saveButtonTappedFromToolbar;

@end
