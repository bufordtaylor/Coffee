// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FlavorWheels.m instead.

#import "_FlavorWheels.h"

@implementation FlavorWheelsID
@end

@implementation _FlavorWheels

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"FlavorWheels" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"FlavorWheels";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"FlavorWheels" inManagedObjectContext:moc_];
}

- (FlavorWheelsID*)objectID {
	return (FlavorWheelsID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"positionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"position"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic position;



- (short)positionValue {
	NSNumber *result = [self position];
	return [result shortValue];
}

- (void)setPositionValue:(short)value_ {
	[self setPosition:[NSNumber numberWithShort:value_]];
}

- (short)primitivePositionValue {
	NSNumber *result = [self primitivePosition];
	return [result shortValue];
}

- (void)setPrimitivePositionValue:(short)value_ {
	[self setPrimitivePosition:[NSNumber numberWithShort:value_]];
}





@dynamic name;






@dynamic wheel_grouping;

	





@end
