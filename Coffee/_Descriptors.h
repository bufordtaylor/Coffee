// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Descriptors.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Categories;



@interface DescriptorsID : NSManagedObjectID {}
@end

@interface _Descriptors : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DescriptorsID*)objectID;



@property (nonatomic, retain) NSString *descriptor;

//- (BOOL)validateDescriptor:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Categories* category_descriptors;
//- (BOOL)validateCategory_descriptors:(id*)value_ error:(NSError**)error_;




@end

@interface _Descriptors (CoreDataGeneratedAccessors)

@end

@interface _Descriptors (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveDescriptor;
- (void)setPrimitiveDescriptor:(NSString*)value;





- (Categories*)primitiveCategory_descriptors;
- (void)setPrimitiveCategory_descriptors:(Categories*)value;


@end
