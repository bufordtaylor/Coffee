//
//  CoffeeViewController.h
//  Coffee
//
//  Created by Buford Taylor on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScalePopoverPicker.h"

@interface CoffeeViewController : UIViewController <UITableViewDelegate, ScalePopoverPickerDelegate> {
    UITableView* cuppingView;
    ScalePopoverPicker *_scalePicker;
    UIPopoverController *_scalePickerPopover;
    IBOutlet UIToolbar* toolBar;
    IBOutlet UIView* leftNav;
}

@property  (nonatomic, retain) UITableView* cuppingView;
@property (nonatomic, retain) ScalePopoverPicker *scalePicker;
@property (nonatomic, retain) UIPopoverController *scalePickerPopover;
@property (nonatomic, assign) IBOutlet UIToolbar *toolBar;
@property (nonatomic, assign) IBOutlet UIView* leftNav;

@end
