// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Coffees.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Samples;







@interface CoffeesID : NSManagedObjectID {}
@end

@interface _Coffees : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CoffeesID*)objectID;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *descriptions;

//- (BOOL)validateDescriptions:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *score;

@property int scoreValue;
- (int)scoreValue;
- (void)setScoreValue:(int)value_;

//- (BOOL)validateScore:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *notes;

//- (BOOL)validateNotes:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Samples* coffee_sampling;
//- (BOOL)validateCoffee_sampling:(id*)value_ error:(NSError**)error_;




@end

@interface _Coffees (CoreDataGeneratedAccessors)

@end

@interface _Coffees (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSString*)primitiveDescriptions;
- (void)setPrimitiveDescriptions:(NSString*)value;




- (NSNumber*)primitiveScore;
- (void)setPrimitiveScore:(NSNumber*)value;

- (int)primitiveScoreValue;
- (void)setPrimitiveScoreValue:(int)value_;




- (NSString*)primitiveNotes;
- (void)setPrimitiveNotes:(NSString*)value;




- (NSDate*)primitiveDate;
- (void)setPrimitiveDate:(NSDate*)value;





- (Samples*)primitiveCoffee_sampling;
- (void)setPrimitiveCoffee_sampling:(Samples*)value;


@end
