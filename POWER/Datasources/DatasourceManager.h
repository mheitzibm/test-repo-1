//
//  DatasourceManager.h
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import <Foundation/Foundation.h>

@class EmployeesDBDS;
@class StatusScreen1DS;
@class NewsScreen1DS;
@class EmptyDatasource;

@interface DatasourceManager : NSObject

@property (nonatomic, strong) EmployeesDBDS *employeesDBDS;

@property (nonatomic, strong) StatusScreen1DS *statusScreen1DS;

@property (nonatomic, strong) NewsScreen1DS *newsScreen1DS;

@property (nonatomic, strong) EmptyDatasource *emptyDatasource;

/**
 Singleton
 @return Class instance
 */
+ (instancetype)sharedInstance;

/**
 Synchronize all datasource
 */
- (void)sync;

@end

