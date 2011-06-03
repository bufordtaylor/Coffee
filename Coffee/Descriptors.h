//
//  Descriptors.h
//  Coffee
//
//  Created by Buford Taylor on 4/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Categories;

@interface Descriptors : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * descriptor;
@property (nonatomic, retain) Categories * category_descriptors;

@end
