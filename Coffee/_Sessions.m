// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Sessions.m instead.

#import "_Sessions.h"

@implementation SessionsID
@end

@implementation _Sessions

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Sessions" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Sessions";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Sessions" inManagedObjectContext:moc_];
}

- (SessionsID*)objectID {
	return (SessionsID*)[super objectID];
}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic name;






@dynamic date;






@dynamic session_samples;

	





@end
