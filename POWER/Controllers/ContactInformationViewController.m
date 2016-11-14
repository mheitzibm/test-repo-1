//
//  ContactInformationViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ContactInformationViewController.h"
#import "DatasourceManager.h"
#import "EmptyDatasource.h"
#import "Item.h"
#import "ROMapSearchAction.h"
#import "ROOptionsFilter.h"
#import "ROPhoneAction.h"
#import "RORefreshBehavior.h"
#import "ROSingleDataLoader.h"
#import "ROTextStyle.h"
#import "ROUtils.h"

@interface ContactInformationViewController ()

@property (nonatomic, strong) ROOptionsFilter *optionsFilter;

@property (nonatomic, strong) UILabel *textLabel1Header;
@property (nonatomic, strong) UILabel *textLabel1;
@property (nonatomic, strong) UIButton *textLabel1Button;
@property (nonatomic, strong) UILabel *textLabel2Header;
@property (nonatomic, strong) UILabel *textLabel2;
@property (nonatomic, strong) UIButton *textLabel2Button;
@property (nonatomic, strong) UILabel *textLabel3Header;
@property (nonatomic, strong) UILabel *textLabel3;
@property (nonatomic, strong) UILabel *textLabel4Header;
@property (nonatomic, strong) UILabel *textLabel4;

@property (nonatomic, assign) BOOL didSetupConstraints;

- (void)setupConstraints;

@end

@implementation ContactInformationViewController

- (instancetype)init {

    self = [super init];
    if (self) {

        self.dataLoader = [[ROSingleDataLoader alloc] initWithDatasource:(NSObject<RODatasource> *)[[DatasourceManager sharedInstance] emptyDatasource]
                                                           optionsFilter:self.optionsFilter];
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"ContactInformation"];
	self.textLabel1Header = [self createHeaderWithText:@"Address"];
	[self addSubview:self.textLabel1Header];

	
	self.textLabel1 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel1];

	self.textLabel1Button = [self createButtonWithResource:@"arrow"];
    [self addSubview:self.textLabel1Button];

	self.textLabel2Header = [self createHeaderWithText:@"Phone Number"];
	[self addSubview:self.textLabel2Header];

	
	self.textLabel2 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel2];

	self.textLabel2Button = [self createButtonWithResource:@"phone"];
    [self addSubview:self.textLabel2Button];

	self.textLabel3Header = [self createHeaderWithText:@"Email"];
	[self addSubview:self.textLabel3Header];

	
	self.textLabel3 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel3];

	self.textLabel4Header = [self createHeaderWithText:@"lskfj;sakfj;lksf"];
	[self addSubview:self.textLabel4Header];

	
	self.textLabel4 = [self createLabelWithTextStyle:[ROTextStyle style:ROFontSizeStyleMedium bold:NO italic:NO textAligment:NSTextAlignmentLeft]];
	[self addSubview:self.textLabel4];


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
							@"textLabel1Header": self.textLabel1Header,
							@"textLabel1": self.textLabel1,
							@"textLabel1Button": self.textLabel1Button,
							@"textLabel2Header": self.textLabel2Header,
							@"textLabel2": self.textLabel2,
							@"textLabel2Button": self.textLabel2Button,
							@"textLabel3Header": self.textLabel3Header,
							@"textLabel3": self.textLabel3,
							@"textLabel4Header": self.textLabel4Header,
							@"textLabel4": self.textLabel4,
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

	self.textLabel1Header.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel1Header]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel1.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel1]-margin-[textLabel1Button(buttonSize)]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];


	self.textLabel1Button.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textLabel1Button(buttonSize)]"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	[self.contentConstraints addObject:[NSLayoutConstraint constraintWithItem:self.textLabel1Button
																	attribute:NSLayoutAttributeCenterY
																	relatedBy:NSLayoutRelationEqual
																	   toItem:self.textLabel1
																	attribute:NSLayoutAttributeCenterY
																   multiplier:1.0
																	 constant:0]];

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
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel3]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel4Header.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel4Header]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

	self.textLabel4.translatesAutoresizingMaskIntoConstraints = NO;
	[self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[textLabel4]-margin-|"
																						 options:NSLayoutFormatDirectionLeadingToTrailing
																						 metrics:metrics
																						   views:views]];

    [self.contentConstraints addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[textLabel1Header]-margin-[textLabel1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-(>=margin)-|"
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

- (void)loadDataSuccess:(Item *)item {
    [super loadDataSuccess:item];

      
	self.textLabel1.text = @"aaa Evergreen Dr, Clifton, New Jersey 07014, USA";

	[self setAction:[[ROMapSearchAction alloc] initWithValue:@"Evergreen Dr, Clifton, New Jersey 07014, USA"] view: self.textLabel1];
	[self setAction:[[ROMapSearchAction alloc] initWithValue:@"Evergreen Dr, Clifton, New Jersey 07014, USA"] view: self.textLabel1Button];
	
	self.textLabel2.text = @"(555) 704-3829";

	[self setAction:[[ROPhoneAction alloc] initWithValue:@"(555) 704-3829"] view: self.textLabel2];
	[self setAction:[[ROPhoneAction alloc] initWithValue:@"(555) 704-3829"] view: self.textLabel2Button];
	
	self.textLabel3.text = @"aaacompany@company.com";

	self.textLabel4.text = @"asdfsadfsadf";

}

- (void)loadDataError:(ROError *)error {
    [super loadDataError:error];
}

@end

