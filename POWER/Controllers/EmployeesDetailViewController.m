//
//  EmployeesDetailViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "DatasourceManager.h"
#import "EmployeesDBDS.h"
#import "EmployeesDBDSItem.h"
#import "EmployeesDetailViewController.h"
#import "EmployeesFormViewController.h"
#import "RODeleteItemBehavior.h"
#import "ROMailAction.h"
#import "ROOptionsFilter.h"
#import "ROPhoneAction.h"
#import "RORefreshBehavior.h"
#import "ROShareBehavior.h"
#import "ROSingleDataLoader.h"
#import "ROStyle.h"
#import "ROTextStyle.h"
#import "ROUpdateItemBehavior.h"
#import "ROUtils.h"
#import "UIImageView+RO.h"

@interface EmployeesDetailViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) UILabel *textLabel2Header;
@property (nonatomic, strong) UILabel *textLabel2;
@property (nonatomic, strong) UIButton *textLabel2Button;
@property (nonatomic, strong) UILabel *textLabel3Header;
@property (nonatomic, strong) UILabel *textLabel3;
@property (nonatomic, strong) UIButton *textLabel3Button;

@property (nonatomic, assign) BOOL didSetupConstraints;

- (void)setupConstraints;

@end

@implementation EmployeesDetailViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:(NSObject<RODatasource> *)[[DatasourceManager sharedInstance] employeesDBDS]
                                                           optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"EmployeesDetail"];
	self.imageView1 = [self createImageView];
	[self addSubview:self.imageView1];

	self.textLabel2Header = [self createHeaderWithText:@"Email"];
	[self addSubview:self.textLabel2Header];

    self.textLabel2 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft textColor:@"#313131"]];
	[self addSubview:self.textLabel2];

	self.textLabel2Button = [self createButtonWithResource:@"email"];
    [self addSubview:self.textLabel2Button];

	self.textLabel3Header = [self createHeaderWithText:@"Phone"];
	[self addSubview:self.textLabel3Header];

    self.textLabel3 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft textColor:@"#313131"]];
	[self addSubview:self.textLabel3];

	self.textLabel3Button = [self createButtonWithResource:@"phone"];
    [self addSubview:self.textLabel3Button];


    [self.behaviors addObject:[ROShareBehavior behaviorViewController:self]];
    [self.behaviors addObject:[ROUpdateItemBehavior behaviorViewController:self crudControllerClass:[EmployeesFormViewController class]]];
    [self.behaviors addObject:[RODeleteItemBehavior behaviorViewController:self]];
    [self.behaviors addObject:[RORefreshBehavior behaviorViewController:self]];

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }

    [self updateViewConstraints];

    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateViewConstraints {

    if (!self.didSetupConstraints) {
        self.didSetupConstraints = YES;
        [self setupConstraints];
    }
    [super updateViewConstraints];
}

#pragma mark - Properties init

- (ROOptionsFilter *)optionsFilter {

    if (!_optionsFilter) {

        _optionsFilter = [ROOptionsFilter new];
    
    }
    return _optionsFilter;
}

#pragma mark -Private methods

- (void)setupConstraints {

    NSDictionary *views = @{
							@"scrollView": self.scrollView,
							@"contentView": self.contentView,
							@"imageView1": self.imageView1,
							@"textLabel2Header": self.textLabel2Header,
							@"textLabel2": self.textLabel2,
							@"textLabel2Button": self.textLabel2Button,
							@"textLabel3Header": self.textLabel3Header,
							@"textLabel3": self.textLabel3,
							@"textLabel3Button": self.textLabel3Button,
    					  };

    NSDictionary *metrics = @{
        					  @"margin": @16,
        					  @"buttonSize": @25
    						};

    [self.contentView removeConstraints:self.contentConstraints];
    [self.scrollView removeConstraints:self.scrollConstraints];
    [self.view removeConstraints:self.mainConstraints];

	self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.mainConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollView]|"
                                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                                      metrics:metrics
                                                                                        views:views]];
    
    [self.mainConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollView]|"
                                                                                      options:NSLayoutFormatDirectionLeadingToTrailing
                                                                                      metrics:metrics
                                                                                        views:views]];
    
    self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[contentView(scrollView)]|"
																						options:NSLayoutFormatDirectionLeadingToTrailing
																						metrics:metrics
																						  views:views]];
    
    [self.scrollConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[contentView]|"
																						options:NSLayoutFormatDirectionLeadingToTrailing
																						metrics:metrics
																						  views:views]];

	self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[imageView1]|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						  views:views]];

	self.textLabel2Header.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel2Header]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel2.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel2]-margin-[textLabel2Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel2Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel2Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel2Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel2
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

	self.textLabel3Header.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel3Header]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel3.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel3]-margin-[textLabel3Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel3Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel3Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel3Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel3
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

    [self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[imageView1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-(>=margin)-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

    [self.view addConstraints:self.mainConstraints];
    [self.contentView addConstraints:self.contentConstraints];
    [self.scrollView addConstraints:self.scrollConstraints];
}

#pragma mark - <RODataDelegate>

- (void)loadData {
    [super loadData];
}

- (void)loadDataSuccess:(EmployeesDBDSItem *)item {
    [super loadDataSuccess:item];

    self.navigationItem.title = [NSString stringWithFormat:@"%@%@%@", item.name, @" ", item.lastname];
    
	[self.imageView1 ro_setImage:[self.dataLoader.datasource imagePath:item.picture] imageError:[[ROStyle sharedInstance] noPhotoImage] containerView:self.view];

	self.textLabel2.text = item.email;

	[self setAction:[[ROMailAction alloc] initWithValue:item.email] view: self.textLabel2];
	[self setAction:[[ROMailAction alloc] initWithValue:item.email] view: self.textLabel2Button];
	
	self.textLabel3.text = item.phone;

	[self setAction:[[ROPhoneAction alloc] initWithValue:item.phone] view: self.textLabel3];
	[self setAction:[[ROPhoneAction alloc] initWithValue:item.phone] view: self.textLabel3Button];
	
}

- (void)loadDataError:(ROError *)error {
    [super loadDataError:error];
}

@end

