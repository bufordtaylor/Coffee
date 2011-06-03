// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Descriptors.m instead.

#import "_Descriptors.h"

@implementation DescriptorsID
@end

@implementation _Descriptors

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Descriptors" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Descriptors";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Descriptors" inManagedObjectContext:moc_];
}

- (DescriptorsID*)objectID {
	return (DescriptorsID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic descriptor;






@dynamic category_descriptors;

	





@end
