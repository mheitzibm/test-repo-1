//
//  MenuViewController.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "ContactInformationViewController.h"
#import "DatasourceManager.h"
#import "EmployeesViewController.h"
#import "MenuViewController.h"
#import "NewsViewController.h"
#import "ROBehavior.h"
#import "ROItemCell.h"
#import "RONavigationAction.h"
#import "ROPhotoTitleCollectionViewCell.h"
#import "ROStyle.h"
#import "ROUtils.h"
#import "StatusViewController.h"
#import "UIImageView+RO.h"

@interface MenuViewController ()

- (void)configureCell:(UICollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end

@implementation MenuViewController

static NSString * const kReuseIdentifier    = @"Cell";

static CGFloat const kMargin                = 8.0f;

- (instancetype)init {

    self = [super init];
    if (self) {

        self.numberOfColumns = 2;
    }
    return self;
}

- (void)viewDidLoad {

    [super viewDidLoad];

    [[[ROUtils sharedInstance] analytics] logPage:@"Menu"];

	self.navigationItem.title = NSLocalizedString(@"Menu", nil);
	
    self.items = @[                       
                       [[ROItemCell alloc] initWithText1:@"EMPLOYEES"
                                         atImageResource:@"EMPLOYEES251.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[EmployeesViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"STATUS"
                                         atImageResource:@"STATUS126.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[StatusViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"NEWS"
                                         atImageResource:@"NEWS859.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[NewsViewController class]]],
                       [[ROItemCell alloc] initWithText1:@"CONTACT"
                                         atImageResource:@"CONTACT504.png"
                                                atAction:[[RONavigationAction alloc] initWithRootViewController:self destinationValue:[ContactInformationViewController class]]]
                  ];

    [self.collectionView registerClass:[ROPhotoTitleCollectionViewCell class]
            forCellWithReuseIdentifier:kReuseIdentifier];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    

    for (id<ROBehavior> behavior in self.behaviors) {
        [behavior viewDidLoad];
    }
    
    [self updateViewConstraints];
}

#pragma mark - Private methods

- (void)configureCell:(ROPhotoTitleCollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {

    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    cell.titleLabel.text = item.text1;
    [cell.photoImageView ro_setImage:item.imageResource imageError:[[ROStyle sharedInstance] noPhotoImage]];
    if (item.action && [item.action canDoAction]) {

        cell.userInteractionEnabled = YES;

    } else {

        cell.userInteractionEnabled = NO;
    }
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat minimumInteritemSpacing = [self collectionView:collectionView
                                                    layout:collectionViewLayout
                  minimumInteritemSpacingForSectionAtIndex:indexPath.section];
    
    CGFloat with = collectionView.frame.size.width - kMargin * 2;
    CGFloat cellWidth = floorf(with / self.numberOfColumns) - (self.numberOfColumns - 1) * minimumInteritemSpacing;
    return CGSizeMake(cellWidth, cellWidth);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(kMargin, kMargin, kMargin, kMargin); // top, left, bottom, right
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    
    return kMargin;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return kMargin / self.numberOfColumns;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kReuseIdentifier
                                                                           forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];

    return cell;
}

#pragma mark - <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    ROItemCell *item = self.items[(NSUInteger)indexPath.row];
    if (item.action && [item.action canDoAction]) {
    
        [item.action doAction];
    }
}

@end

