//
//  NewsScreen1DSItem.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "NewsScreen1DSItem.h"
#import "NSDictionary+RO.h"

@implementation NewsScreen1DSItem

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {

	self = [super init];
	if (self) {
		[self updateWithDictionary:dictionary];
	}
	return self;
}

- (void)updateWithDictionary:(NSDictionary *)dictionary {
    
    self.title = [dictionary ro_stringForKey:kNewsScreen1DSItemTitle];
    
    self.subtitle = [dictionary ro_stringForKey:kNewsScreen1DSItemSubtitle];
    
    self.content = [dictionary ro_stringForKey:kNewsScreen1DSItemContent];
    
    self.date = [dictionary ro_dateForKey:kNewsScreen1DSItemDate];
    
    self.idProp = [dictionary ro_stringForKey:kNewsScreen1DSItemId];
}

- (id)identifier {
	
	return self.idProp;
}

@end

