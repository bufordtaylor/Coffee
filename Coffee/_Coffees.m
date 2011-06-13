// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Coffees.m instead.

#import "_Coffees.h"

@implementation CoffeesID
@end

@implementation _Coffees

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Coffees" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Coffees";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Coffees" inManagedObjectContext:moc_];
}

- (CoffeesID*)objectID {
	return (CoffeesID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"scoreValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"score"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic name;






@dynamic descriptions;






@dynamic score;



- (int)scoreValue {
	NSNumber *result = [self score];
	return [result intValue];
}

- (void)setScoreValue:(int)value_ {
	[self setScore:[NSNumber numberWithInt:value_]];
}

- (int)primitiveScoreValue {
	NSNumber *result = [self primitiveScore];
	return [result intValue];
}

- (void)setPrimitiveScoreValue:(int)value_ {
	[self setPrimitiveScore:[NSNumber numberWithInt:value_]];
}





@dynamic notes;






@dynamic date;






@dynamic coffee_sampling;

	





@end
