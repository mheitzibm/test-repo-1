//
//  EmployeesDBDSItem.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "EmployeesDBDSItem.h"
#import "NSDictionary+RO.h"

@implementation EmployeesDBDSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.name = [dictionary ro_stringForKey:kEmployeesDBDSItemName];
    
    self.lastname = [dictionary ro_stringForKey:kEmployeesDBDSItemLastname];
    
    self.picture = [dictionary ro_stringForKey:kEmployeesDBDSItemPicture];
    
    self.role = [dictionary ro_stringForKey:kEmployeesDBDSItemRole];
    
    self.email = [dictionary ro_stringForKey:kEmployeesDBDSItemEmail];
    
    self.phone = [dictionary ro_stringForKey:kEmployeesDBDSItemPhone];
    
    self.idProp = [dictionary ro_stringForKey:kEmployeesDBDSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

