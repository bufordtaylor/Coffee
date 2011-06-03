//
//  UIApplication+ApplicationDocumentsDirectory.h
//  eventbrite
//
//  Created by Brian Gorby on 3/11/11.
//  Copyright 2011 Eventbrite. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIApplication (ApplicationDocumentsDirectory)

+ (NSURL *)applicationDocumentsDirectoryAsURL;
+ (NSString *)applicationDocumentsDirectoryAsString;

@end
