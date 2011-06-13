//
//  Services.m
//  Coffee
//
//  Created by Buford Taylor on 4/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Services.h"
#import "CoffeeModels.h"


@implementation Services

+(CoffeeCoreData*) ds {
    return [(CoffeeAppDelegate*)[[UIApplication sharedApplication] delegate] dataSource];
}

+(NSManagedObjectContext*) moc {
    return [Services ds].managedObjectContext;
}

+(void) save {
    [[Services ds].managedObjectContext save];
}

@end
