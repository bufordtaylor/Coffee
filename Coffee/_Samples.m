// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Samples.m instead.

#import "_Samples.h"

@implementation SamplesID
@end

@implementation _Samples

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Samples" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Samples";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Samples" inManagedObjectContext:moc_];
}

- (SamplesID*)objectID {
	return (SamplesID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic date;






@dynamic session_samples;

	

@dynamic coffee_sampling;

	





@end
