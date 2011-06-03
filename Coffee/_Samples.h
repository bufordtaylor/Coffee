// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Samples.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Sessions;
@class Coffees;



@interface SamplesID : NSManagedObjectID {}
@end

@interface _Samples : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SamplesID*)objectID;



@property (nonatomic, retain) NSDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Sessions* session_samples;
//- (BOOL)validateSession_samples:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) Coffees* coffee_sampling;
//- (BOOL)validateCoffee_sampling:(id*)value_ error:(NSError**)error_;




@end

@interface _Samples (CoreDataGeneratedAccessors)

@end

@interface _Samples (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDate;
- (void)setPrimitiveDate:(NSDate*)value;





- (Sessions*)primitiveSession_samples;
- (void)setPrimitiveSession_samples:(Sessions*)value;



- (Coffees*)primitiveCoffee_sampling;
- (void)setPrimitiveCoffee_sampling:(Coffees*)value;


@end
