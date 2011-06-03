//
//  SessionListViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewSessionViewController.h"


@interface SessionListViewController : UIViewController {
    IBOutlet UIBarButtonItem* newSessionButton;
    NewSessionViewController* newSessionViewController;
    UIPopoverController* popController;
}

@property (nonatomic, retain) UIBarButtonItem* newSessionButton;

-(IBAction) clickedNewSessionButton:(id)sender;

@end
