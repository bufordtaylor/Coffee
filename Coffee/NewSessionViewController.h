//
//  NewSessionViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewSessionViewController : UIViewController {
    
    IBOutlet UIButton* startSessionButton;
    IBOutlet UITextField* numberOfSamplesButton;
    IBOutlet UITextField* nameOfSessionButton;
    
}

@property (nonatomic, retain) UIButton* startSessionButton;
@property (nonatomic, retain) UITextField* numberOfSamplesButton;
@property (nonatomic, retain) UITextField* nameOfSessionButton;

@end
