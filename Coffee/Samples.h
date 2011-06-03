//
//  Samples.h
//  Coffee
//
//  Created by Buford Taylor on 4/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Samples : NSManagedObject {
@private
}
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSManagedObject * coffee_sampling;
@property (nonatomic, retain) NSManagedObject * session_samples;

@end
