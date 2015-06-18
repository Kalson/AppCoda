//
//  TableViewController.m
//  OOPSimpleTable
//
//  Created by KaL on 6/1/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "TableViewController.h"
#import "Recipes.h"
#import "TableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    NSMutableArray *recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // create recipe objects from the properties provided in the model
    
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
    recipe7.prepTime = @"45 mins";
    recipe7.image = @"white_chocolate_donut.jpg";
    
    Recipes *recipe8 = [Recipes new];
    recipe8.name = @"Starbucks Coffee";
    recipe8.prepTime = @"5 mins";
    recipe8.image = @"starbucks_coffee.jpg";
    
    Recipes *recipe9 = [Recipes new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 mins";
    recipe9.image = @"vegetable_curry.jpg";
    
    Recipes *recipe10 = [Recipes new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 mins";
    recipe10.image = @"instant_noodle_with_egg.jpg";
    
    Recipes *recipe11 = [Recipes new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 mins";
    recipe11.image = @"noodle_with_bbq_pork.jpg";
    
    Recipes *recipe12 = [Recipes new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.image = @"japanese_noodle_with_pork.jpg";
    
    Recipes *recipe13 = [Recipes new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.image = @"green_tea.jpg";
    
    Recipes *recipe14 = [Recipes new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.image = @"thai_shrimp_cake.jpg";
    
    Recipes *recipe15 = [Recipes new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.image =  @"angry_birds_cake.jpg";
    
    Recipes *recipe16 = [Recipes new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 mins";
    recipe16.image = @"ham_and_cheese_panini.jpg";
    
    // create an array to store the recipe objects in
    recipes = [@[recipe1,recipe2,recipe3,recipe4,recipe5,recipe6,recipe7,recipe8,recipe9,recipe10,recipe11,recipe12,recipe13,recipe14,recipe15,recipe16]mutableCopy];
    
    self.tableView.rowHeight = 71;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return recipes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdenifier = @"Cell";
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdenifier];
    
    
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenifier];
    }
    
    // create a recipe object and set the indexes to it
    Recipes *recipe = [recipes objectAtIndex:indexPath.row];
    
    // display recipe Names
    cell.recipeNameLabel.text = recipe.name;
    
    // display the images
    cell.recipeImageView.image = [UIImage imageNamed:recipe.image];
    
    // diplay the prep times
    cell.recipePrepTimeLabel.text = recipe.prepTime;
    
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
  
    [recipes removeObjectAtIndex:indexPath.row];
    
//  or  [tableView reloadData];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // unhighlight
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
