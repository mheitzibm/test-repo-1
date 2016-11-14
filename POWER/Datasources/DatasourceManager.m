//
//  DatasourceManager.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "EmployeesDBDS.h"
#import "StatusScreen1DS.h"
#import "NewsScreen1DS.h"
#import "EmptyDatasource.h"

@implementation DatasourceManager

+ (instancetype)sharedInstance {

    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

#pragma mark - Properties init

- (EmployeesDBDS *)employeesDBDS {

    if (!_employeesDBDS) {

        _employeesDBDS = [EmployeesDBDS new];
    }
    return _employeesDBDS;
}

- (StatusScreen1DS *)statusScreen1DS {

    if (!_statusScreen1DS) {

        _statusScreen1DS = [StatusScreen1DS new];
    }
    return _statusScreen1DS;
}

- (NewsScreen1DS *)newsScreen1DS {

    if (!_newsScreen1DS) {

        _newsScreen1DS = [NewsScreen1DS new];
    }
    return _newsScreen1DS;
}

- (EmptyDatasource *)emptyDatasource {

    if (!_emptyDatasource) {

        _emptyDatasource = [EmptyDatasource new];
    }
    return _emptyDatasource;
}

#pragma mark - Public methods

- (void)sync {

    
}

@end

