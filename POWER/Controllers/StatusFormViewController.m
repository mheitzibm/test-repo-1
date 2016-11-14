//
//  StatusFormViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "ROError.h"
#import "ROFormFieldDatetime.h"
#import "ROFormFieldGeo.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "StatusFormViewController.h"
#import "StatusScreen1DS.h"
#import "StatusScreen1DSItem.h"
#import "SVProgressHUD.h"

@interface StatusFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *statusField;

@property (nonatomic, strong) ROFormFieldGeo *locationField;

@property (nonatomic, strong) ROFormFieldText *employeeField;

@property (nonatomic, strong) ROFormFieldDatetime *startDateField;

@property (nonatomic, strong) ROFormFieldDatetime *endDateField;

@end

@implementation StatusFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"StatusForm"];

    self.statusField = [ROFormFieldText fieldWithLabel:@"Status" name:kStatusScreen1DSItemStatus required:NO];
    
    self.locationField = [ROFormFieldGeo fieldWithLabel:@"Location" name:kStatusScreen1DSItemLocation required:NO];
    
    self.employeeField = [ROFormFieldText fieldWithLabel:@"Employee" name:kStatusScreen1DSItemEmployee required:NO];
    
    self.startDateField = [ROFormFieldDatetime fieldWithLabel:@"StartDate" name:kStatusScreen1DSItemStartDate required:NO];
    
    self.endDateField = [ROFormFieldDatetime fieldWithLabel:@"EndDate" name:kStatusScreen1DSItemEndDate required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.statusField,
                   self.locationField,
                   self.employeeField,
                   self.startDateField,
                   self.endDateField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(StatusScreen1DSItem *)item {

    self.identifier = [item identifier];

    [self.statusField setValue:item.status];
    
    [self.locationField setValue:item.location];
    
    [self.employeeField setValue:item.employee];
    
    [self.startDateField setValue:item.startDate];
    
    [self.endDateField setValue:item.endDate];
}

#pragma mark - Form actions

- (void)cancelButtonAction:(id)sender {

    [super cancelButtonAction:sender];
}

- (void)deleteButtonAction:(id)sender {

    [super deleteButtonAction:sender];
}

- (void)saveButtonAction:(id)sender {

    [super saveButtonAction:sender];
}

- (void)confirmDelete {

    [super confirmDelete];
}

- (void)deleteItem {

    [super deleteItem];
}

- (void)updateItem {

    [self.hiddenValues removeAllObjects];

    [super updateItem];
}

- (void)createItem {
    
    [super createItem];
}

@end

