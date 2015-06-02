//
//  RecipeDetailedVC.m
//  OOPCustomTable
//
//  Created by KaL on 6/2/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "RecipeDetailedVC.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface RecipeDetailedVC ()

@end

@implementation RecipeDetailedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UILabel *recipeNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.bounds.size.height/2, self.view.bounds.size.width - 20, 30)];
//    recipeNameLabel.textAlignment = NSTextAlignmentCenter;
//    recipeNameLabel.text = self.recipeName;
//    [self.view addSubview:recipeNameLabel];
    
    UIImageView *photoFrameImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 75, SCREEN_WIDTH - 20, (SCREEN_HEIGHT/2) - 80)];
    photoFrameImage.image = [UIImage imageNamed:@"photo-frame"];
    [self.view addSubview:photoFrameImage];
    
    UIImageView *photoFrameImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 75, SCREEN_WIDTH - 20, (SCREEN_HEIGHT/2) - 80)];
    photoFrameImage.image = [UIImage imageNamed:@"photo-frame"];
    [self.view addSubview:photoFrameImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
