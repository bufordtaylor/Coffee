//
//  Detail1VC.h
//  Coffee
//
//  Created by Buford Taylor on 5/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplitCoffeeViewController.h"


@interface Detail1VC : UIViewController <SubstitutableDetailViewController> {
    UIToolbar* toolbar;
    
}

@property (nonatomic, retain) IBOutlet UIToolbar *toolbar;

@end
