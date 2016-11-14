//
//  StatusFilterViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ROFilterFieldSelection.h"
#import "ROUtils.h"
#import "StatusFilterViewController.h"
#import "StatusScreen1DS.h"
#import "StatusScreen1DSItem.h"
#import "StatusScreen1DSItemKeys.h"

@implementation StatusFilterViewController

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Status"];

	self.navigationItem.title = NSLocalizedString(@"Status", nil);
	
    self.fields = @[
                     [ROFilterFieldSelection fieldLabel:@"Status"
                                              fieldName:kStatusScreen1DSItemStatus
                                         formController:self
                                                 single:NO],
                     
                     [ROFilterFieldSelection fieldLabel:@"Employee"
                                              fieldName:kStatusScreen1DSItemEmployee
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

