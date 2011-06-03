// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Categories.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Descriptors;



@interface CategoriesID : NSManagedObjectID {}
@end

@interface _Categories : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (CategoriesID*)objectID;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Descriptors* category_descriptors;
//- (BOOL)validateCategory_descriptors:(id*)value_ error:(NSError**)error_;




@end

@interface _Categories (CoreDataGeneratedAccessors)

@end

@interface _Categories (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;





- (Descriptors*)primitiveCategory_descriptors;
- (void)setPrimitiveCategory_descriptors:(Descriptors*)value;


@end
