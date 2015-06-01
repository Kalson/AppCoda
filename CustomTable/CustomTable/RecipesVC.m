//
//  RecipesVC.m
//  CustomTable
//
//  Created by KaL on 5/30/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "RecipesVC.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface RecipesVC ()

@end

@implementation RecipesVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];  // change background white
    
    // create recipe label object
    self.recipeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, (SCREEN_HEIGHT - 60)/2, SCREEN_WIDTH - 20, 40)];
    self.recipeLabel.text = self.recipeNames;  // Set the Label text with the selected recipe
    self.recipeLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.recipeLabel];
    
    // create the prep time label object
    self.prepTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, (SCREEN_HEIGHT - 20)/2, SCREEN_WIDTH - 20, 40)];
    self.prepTimeLabel.text = self.prepTimes; // set the the prep time to select recipe
    self.prepTimeLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.prepTimeLabel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
