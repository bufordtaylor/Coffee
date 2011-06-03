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



@property (nonatomic, retain) NSDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *inventory;

@property float inventoryValue;
- (float)inventoryValue;
- (void)setInventoryValue:(float)value_;

//- (BOOL)validateInventory:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Samples* coffee_sampling;
//- (BOOL)validateCoffee_sampling:(id*)value_ error:(NSError**)error_;




@end

@interface _Coffees (CoreDataGeneratedAccessors)

@end

@interface _Coffees (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveDate;
- (void)setPrimitiveDate:(NSDate*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveInventory;
- (void)setPrimitiveInventory:(NSNumber*)value;

- (float)primitiveInventoryValue;
- (void)setPrimitiveInventoryValue:(float)value_;





- (Samples*)primitiveCoffee_sampling;
- (void)setPrimitiveCoffee_sampling:(Samples*)value;


@end
