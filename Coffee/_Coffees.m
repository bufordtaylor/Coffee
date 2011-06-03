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
	
	if ([key isEqualToString:@"inventoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"inventory"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
	}

	return keyPaths;
}




@dynamic date;






@dynamic name;






@dynamic inventory;



- (float)inventoryValue {
	NSNumber *result = [self inventory];
	return [result floatValue];
}

- (void)setInventoryValue:(float)value_ {
	[self setInventory:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveInventoryValue {
	NSNumber *result = [self primitiveInventory];
	return [result floatValue];
}

- (void)setPrimitiveInventoryValue:(float)value_ {
	[self setPrimitiveInventory:[NSNumber numberWithFloat:value_]];
}





@dynamic coffee_sampling;

	





@end
