//
//  MainTabViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MainTabViewController : UIViewController {
    
    UITabBarController* tabBarController;
    
}

@property (nonatomic, assign) IBOutlet UITabBarController* tabBarController;


@end
