//
//  ViewController.m
//  OOPSimpleTable
//
//  Created by KaL on 5/30/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "ViewController.h"
#import "Recipes.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate> // volunteer the instance to conform to these protocol

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // create table view object
    UITableView *myTableView = [[UITableView alloc] initWithFrame:self.view.frame];
    
    // tell self/current instance that its the delegate and datasource for the table view
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    [self.view addSubview:myTableView];
    
    
    // init the array with a list of Recipe Names
//    recipeNames
//                  ", , , ,
//                   @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
//    
//    // init the array with a list of images
//    recipeImages = , ", ,
//                     , , ,
//                     @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
//                     @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
//                     @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
//                     @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
//    
//    // init the array with a list of Prep Times
//    recipePrepTimes = @[, ", ", , , , @"45 min", @"5 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min"];
//    
//
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 mins";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe2 = [Recipes new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 mins";
    recipe2.image = @"mushroom_risotto.jpg";
    
    Recipes *recipe3 = [Recipes new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 mins";
    recipe3.image = @"full_breakfast.jpg";
    
    Recipes *recipe4 = [Recipes new];
    recipe4.name =  @"Hamburger";
    recipe4.prepTime = @"30 mins";
    recipe4.image = @"hamburger.jpg";
    
    Recipes *recipe5 = [Recipes new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 mins";
    recipe5.image = @"ham_and_egg_sandwich.jpg";
    
    Recipes *recipe6 = [Recipes new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.image = @"creme_brelee.jpg";
    
    Recipes *recipe7 = [Recipes new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"30";
    recipe7.image = @"egg_benedict.jpg";
    
    Recipes *recipe8 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30";
    recipe1.image = @"egg_benedict.jpg";
    
    
    
    
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // create the cell identifier
    static NSString *cellIdentifier = @"Cell";
    
    // create cell object and make ie resusable with the cell identifier
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // if cell doesn't exist, create it
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
