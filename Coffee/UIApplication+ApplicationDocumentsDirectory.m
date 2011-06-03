//
//  UIApplication+ApplicationDocumentsDirectory.m
//  eventbrite
//
//  Created by Brian Gorby on 3/11/11.
//  Copyright 2011 Eventbrite. All rights reserved.
//

#import "UIApplication+ApplicationDocumentsDirectory.h"


@implementation UIApplication (ApplicationDocumentsDirectory)

+ (NSURL *)applicationDocumentsDirectoryAsURL {
   return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)applicationDocumentsDirectoryAsString {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}


@end
