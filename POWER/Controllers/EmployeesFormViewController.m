//
//  EmployeesFormViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "EmployeesDBDS.h"
#import "EmployeesDBDSItem.h"
#import "EmployeesFormViewController.h"
#import "ROError.h"
#import "ROFormFieldImage.h"
#import "ROFormFieldText.h"
#import "RORefreshBehavior.h"
#import "ROUtils.h"
#import "SVProgressHUD.h"

@interface EmployeesFormViewController () <UITextFieldDelegate, ROFormDataDelegate>

@property (nonatomic, strong) ROFormFieldText *nameField;

@property (nonatomic, strong) ROFormFieldText *lastnameField;

@property (nonatomic, strong) ROFormFieldImage *pictureField;

@property (nonatomic, strong) ROFormFieldText *roleField;

@property (nonatomic, strong) ROFormFieldText *emailField;

@property (nonatomic, strong) ROFormFieldText *phoneField;

@end

@implementation EmployeesFormViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.formDataDelegate = self;
    }
    return self;
}

- (void) viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"EmployeesForm"];

    self.nameField = [ROFormFieldText fieldWithLabel:@"Name" name:kEmployeesDBDSItemName required:NO];
    
    self.lastnameField = [ROFormFieldText fieldWithLabel:@"Lastname" name:kEmployeesDBDSItemLastname required:NO];
    
    self.pictureField = [ROFormFieldImage fieldWithLabel:@"Picture" name:kEmployeesDBDSItemPicture viewController:self required:NO];
    
    self.roleField = [ROFormFieldText fieldWithLabel:@"Role" name:kEmployeesDBDSItemRole required:NO];
    
    self.emailField = [ROFormFieldText fieldWithLabel:@"Email" name:kEmployeesDBDSItemEmail required:NO];
    
    self.phoneField = [ROFormFieldText fieldWithLabel:@"Phone" name:kEmployeesDBDSItemPhone required:NO];
    
    self.fields = [[NSMutableArray alloc] initWithObjects:
    
                   self.nameField,
                   self.lastnameField,
                   self.pictureField,
                   self.roleField,
                   self.emailField,
                   self.phoneField
    
                   , nil];
}

#pragma mark - Form data delegate

- (void)loadFormData:(EmployeesDBDSItem *)item {

    self.identifier = [item identifier];

    [self.nameField setValue:item.name];
    
    [self.lastnameField setValue:item.lastname];
    
    [self.pictureField setValue:item.picture];
    
    [self.roleField setValue:item.role];
    
    [self.emailField setValue:item.email];
    
    [self.phoneField setValue:item.phone];
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

