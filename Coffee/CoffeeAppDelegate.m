//
//  CoffeeAppDelegate.m
//  Coffee
//
//  Created by Buford Taylor on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CoffeeAppDelegate.h"
#import "CoffeeModels.h"
#import "MainTabViewController.h"
@implementation CoffeeAppDelegate


@synthesize window, dataSource;

@synthesize viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    dataSource = [[CoffeeCoreData alloc] init];
    
    /*
     Example core data usage using active records:
     */
    

//    Coffees* aCoffee = [Coffees createInContext:dataSource.managedObjectContext];
//    aCoffee.name = @"Un arabica";
//    [dataSource.managedObjectContext save];
//    
//    
//    Coffees* bCoffee = (Coffees*)[Coffees findFirstInContext:dataSource.managedObjectContext];
//    DLog(@"name is %@", bCoffee.name);
//
//    NSArray* arr = [Coffees findAllInContext:dataSource.managedObjectContext];
//    for (Coffees* c in arr) {
//        DLog(@"arry c name %@", c.name);
//    }
     
    window.rootViewController = viewController;
//    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
    return YES;
}

-(CoffeeCoreData*) ds {
    return dataSource;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [window release];
    [viewController release];
    [dataSource release];
    [super dealloc];
}

@end
