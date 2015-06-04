//
//  CollectionViewController.m
//  RecipePhoto
//
//  Created by KaL on 6/4/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (instancetype)init
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return (self = [super initWithCollectionViewLayout:layout]);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

@end
