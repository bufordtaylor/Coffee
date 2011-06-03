//
//  CoffeeAppDelegate.h
//  Coffee
//
//  Created by Buford Taylor on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoffeeCoreData.h"

@class MainTabViewController;

@interface CoffeeAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow* window;
    CoffeeCoreData* dataSource;
    UITabBarController *viewController;

}

-(CoffeeCoreData*) ds;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) CoffeeCoreData* dataSource;
@property (nonatomic, retain) IBOutlet UITabBarController *viewController;

@end
