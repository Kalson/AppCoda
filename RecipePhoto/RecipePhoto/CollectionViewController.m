//
//  CollectionViewController.m
//  RecipePhoto
//
//  Created by KaL on 6/4/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface CollectionViewController () <UICollectionViewDelegateFlowLayout>

@end

@implementation CollectionViewController
{
    NSArray *recipeImages;
}

- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return (self = [super initWithCollectionViewLayout:layout]);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor blackColor];
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    
    recipeImages = @[@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg",
                     @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg",
                     @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg",
                     @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg",
                     @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg",
                     @"white_chocolate_donut.jpg"];
    
}

// layout itemsize
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (SCREEN_WIDTH == 320){ // for iPhone 4/4s & 5/5S
        return CGSizeMake(100, 100);
        
    } else if (SCREEN_WIDTH <= 375) { // for iPhone 6
        return CGSizeMake(124, 124);
    } else {
        return CGSizeMake(137, 137); // for iPhone 6 plus
    }
}

// layout line spacing
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

// layout minimumInteritemSpacing
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return recipeImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.recipeImageView.image = [UIImage imageNamed:recipeImages[indexPath.row]]; // set the cell imageView with the recipe image array

    cell.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"photo-frame"]];
//    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
}

@end
