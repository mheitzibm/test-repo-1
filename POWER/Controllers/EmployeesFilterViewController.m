//
//  EmployeesFilterViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "EmployeesDBDS.h"
#import "EmployeesDBDSItem.h"
#import "EmployeesDBDSItemKeys.h"
#import "EmployeesFilterViewController.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"

@implementation EmployeesFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Employees"];

	self.navigationItem.title = NSLocalizedString(@"Elephantasticbasaltorpepper", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Name"
                                              fieldName:kEmployeesDBDSItemName
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Lastname"
                                              fieldName:kEmployeesDBDSItemLastname
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Role"
                                              fieldName:kEmployeesDBDSItemRole
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Email"
                                              fieldName:kEmployeesDBDSItemEmail
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Phone"
                                              fieldName:kEmployeesDBDSItemPhone
                                         formController:self
                                                 single:NO],
                     
    ];
}

#pragma mark - Filter actions

- (void)close {
  
    [super close];
}

- (void)cancel {
  
    [super cancel];
}

- (void)submit {

    [super submit];
}

- (void)reset {
  
    [super reset];
}

@end

