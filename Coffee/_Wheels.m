// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Wheels.m instead.

#import "_Wheels.h"

@implementation WheelsID
@end

@implementation _Wheels

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Wheels" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Wheels";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Wheels" inManagedObjectContext:moc_];
}

- (WheelsID*)objectID {
	return (WheelsID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"greenValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"green"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"redValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"red"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"blueValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"blue"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}
	if ([key isEqualToString:@"positionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"position"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic name;






@dynamic green;



- (float)greenValue {
	NSNumber *result = [self green];
	return [result floatValue];
}

- (void)setGreenValue:(float)value_ {
	[self setGreen:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveGreenValue {
	NSNumber *result = [self primitiveGreen];
	return [result floatValue];
}

- (void)setPrimitiveGreenValue:(float)value_ {
	[self setPrimitiveGreen:[NSNumber numberWithFloat:value_]];
}





@dynamic red;



- (float)redValue {
	NSNumber *result = [self red];
	return [result floatValue];
}

- (void)setRedValue:(float)value_ {
	[self setRed:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveRedValue {
	NSNumber *result = [self primitiveRed];
	return [result floatValue];
}

- (void)setPrimitiveRedValue:(float)value_ {
	[self setPrimitiveRed:[NSNumber numberWithFloat:value_]];
}





@dynamic blue;



- (float)blueValue {
	NSNumber *result = [self blue];
	return [result floatValue];
}

- (void)setBlueValue:(float)value_ {
	[self setBlue:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveBlueValue {
	NSNumber *result = [self primitiveBlue];
	return [result floatValue];
}

- (void)setPrimitiveBlueValue:(float)value_ {
	[self setPrimitiveBlue:[NSNumber numberWithFloat:value_]];
}





@dynamic position;



- (int)positionValue {
	NSNumber *result = [self position];
	return [result intValue];
}

- (void)setPositionValue:(int)value_ {
	[self setPosition:[NSNumber numberWithInt:value_]];
}

- (int)primitivePositionValue {
	NSNumber *result = [self primitivePosition];
	return [result intValue];
}

- (void)setPrimitivePositionValue:(int)value_ {
	[self setPrimitivePosition:[NSNumber numberWithInt:value_]];
}









@end
