//
//  StatusScreen1DSItem.h
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>
#import "ROModel.h"
#import "RORestGeoPoint.h"
#import "StatusScreen1DSItemKeys.h"

@interface StatusScreen1DSItem : NSObject <ROModelDelegate>

@property (nonatomic, strong) NSString *status;

@property (nonatomic, strong) RORestGeoPoint *location;

@property (nonatomic, strong) NSString *employee;

@property (nonatomic, strong) NSDate *startDate;

@property (nonatomic, strong) NSDate *endDate;

@property (nonatomic, strong) NSString *idProp;

@end
