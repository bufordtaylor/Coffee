// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FlavorWheels.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Wheels;




@interface FlavorWheelsID : NSManagedObjectID {}
@end

@interface _FlavorWheels : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (FlavorWheelsID*)objectID;



@property (nonatomic, retain) NSNumber *position;

@property short positionValue;
- (short)positionValue;
- (void)setPositionValue:(short)value_;

//- (BOOL)validatePosition:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Wheels* wheel_grouping;
//- (BOOL)validateWheel_grouping:(id*)value_ error:(NSError**)error_;




@end

@interface _FlavorWheels (CoreDataGeneratedAccessors)

@end

@interface _FlavorWheels (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitivePosition;
- (void)setPrimitivePosition:(NSNumber*)value;

- (short)primitivePositionValue;
- (void)setPrimitivePositionValue:(short)value_;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (Wheels*)primitiveWheel_grouping;
- (void)setPrimitiveWheel_grouping:(Wheels*)value;


@end
