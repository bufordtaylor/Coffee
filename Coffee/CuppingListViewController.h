//
//  CuppingListViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DescriptorsViewController.h"


@interface CuppingListViewController : UIViewController {
    UIPopoverController* popController;
    UITableView* aTableView;
    NSIndexPath* anIndexPath;
    DescriptorsViewController* descriptorViewController;
    int numberOfSamples;
}

@property  (nonatomic, retain) IBOutlet UITableView* aTableView;
@property (readwrite, assign) int numberOfSamples;

-(IBAction)cancelButtonTappedFromToolbar;

@end
