//
//  Coffees.h
//  Coffee
//
//  Created by Buford Taylor on 4/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Samples;

@interface Coffees : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * inventory;
@property (nonatomic, retain) Samples * coffee_sampling;

@end
