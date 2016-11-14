//
//  StatusScreen1DSItem.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "StatusScreen1DSItem.h"
#import "NSDictionary+RO.h"

@implementation StatusScreen1DSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.status = [dictionary ro_stringForKey:kStatusScreen1DSItemStatus];
    
    id location = [dictionary objectForKey:kStatusScreen1DSItemLocation];
    if ([location isKindOfClass:[NSDictionary class]]) {
    	self.location = [[RORestGeoPoint alloc] initWithDictionary:location];
    }
    
    self.employee = [dictionary ro_stringForKey:kStatusScreen1DSItemEmployee];
    
    self.startDate = [dictionary ro_dateForKey:kStatusScreen1DSItemStartDate];
    
    self.endDate = [dictionary ro_dateForKey:kStatusScreen1DSItemEndDate];
    
    self.idProp = [dictionary ro_stringForKey:kStatusScreen1DSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

