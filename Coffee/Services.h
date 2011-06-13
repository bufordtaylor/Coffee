//
//  Services.h
//  Coffee
//
//  Created by Buford Taylor on 4/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoffeeAppDelegate.h"
#import "CoffeeCoreData.h"

@interface Services : NSObject {
    
}

+(CoffeeCoreData*) ds;
+(NSManagedObjectContext*) moc;
+(void) save;

@end
