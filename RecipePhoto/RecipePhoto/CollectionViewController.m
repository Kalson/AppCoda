//
//  CollectionViewController.m
//  RecipePhoto
//
//  Created by KaL on 6/4/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "CollectionViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface CollectionViewController () <UICollectionViewDelegateFlowLayout>

@end

@implementation CollectionViewController
{
}

- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return (self = [super initWithCollectionViewLayout:layout]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
}

// layout itemsize
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (SCREEN_WIDTH == 320){ // for iPhone 4/4s & 5/5S
        return CGSizeMake(106, 106);

    } else if (SCREEN_WIDTH <= 375) { // for iPhone 6
        return CGSizeMake(124, 124);
    } else {
        return CGSizeMake(137, 137); // for iPhone 6 plus
    }
}

// layout line spacing
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}

// layout minimumInteritemSpacing
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
}

@end
