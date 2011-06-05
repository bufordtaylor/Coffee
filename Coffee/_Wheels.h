// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Wheels.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"








@interface WheelsID : NSManagedObjectID {}
@end

@interface _Wheels : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (WheelsID*)objectID;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *green;

@property float greenValue;
- (float)greenValue;
- (void)setGreenValue:(float)value_;

//- (BOOL)validateGreen:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *red;

@property float redValue;
- (float)redValue;
- (void)setRedValue:(float)value_;

//- (BOOL)validateRed:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *blue;

@property float blueValue;
- (float)blueValue;
- (void)setBlueValue:(float)value_;

//- (BOOL)validateBlue:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *position;

@property int positionValue;
- (int)positionValue;
- (void)setPositionValue:(int)value_;

//- (BOOL)validatePosition:(id*)value_ error:(NSError**)error_;





@end

@interface _Wheels (CoreDataGeneratedAccessors)

@end

@interface _Wheels (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveGreen;
- (void)setPrimitiveGreen:(NSNumber*)value;

- (float)primitiveGreenValue;
- (void)setPrimitiveGreenValue:(float)value_;




- (NSNumber*)primitiveRed;
- (void)setPrimitiveRed:(NSNumber*)value;

- (float)primitiveRedValue;
- (void)setPrimitiveRedValue:(float)value_;




- (NSNumber*)primitiveBlue;
- (void)setPrimitiveBlue:(NSNumber*)value;

- (float)primitiveBlueValue;
- (void)setPrimitiveBlueValue:(float)value_;




- (NSNumber*)primitivePosition;
- (void)setPrimitivePosition:(NSNumber*)value;

- (int)primitivePositionValue;
- (void)setPrimitivePositionValue:(int)value_;




@end
