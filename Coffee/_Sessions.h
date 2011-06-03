// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Sessions.h instead.

#import <CoreData/CoreData.h>
#import "MOGenBaseClass.h"

@class Samples;




@interface SessionsID : NSManagedObjectID {}
@end

@interface _Sessions : MOGenBaseClass {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (SessionsID*)objectID;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) Samples* session_samples;
//- (BOOL)validateSession_samples:(id*)value_ error:(NSError**)error_;




@end

@interface _Sessions (CoreDataGeneratedAccessors)

@end

@interface _Sessions (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSDate*)primitiveDate;
- (void)setPrimitiveDate:(NSDate*)value;





- (Samples*)primitiveSession_samples;
- (void)setPrimitiveSession_samples:(Samples*)value;


@end
