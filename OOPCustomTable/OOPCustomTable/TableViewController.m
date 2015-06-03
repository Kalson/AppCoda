//
//  TableViewController.m
//  OOPCustomTable
//
//  Created by KaL on 6/2/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "Recipes.h"

#import "TableViewCell.h"


#import "TableViewController.h"
#import "RecipeDetailedVC.h"

@interface TableViewController () <UISearchResultsUpdating>

@end

@implementation TableViewController
{
    NSMutableArray *recipes;
    Recipes *recipe;
    
    UISearchController *mySearchController;
    NSArray *searchResults;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Recipes *recipe1 = [Recipes new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 mins";
    recipe1.image = @"egg_benedict.jpg";
    recipe1.ingredients = @[@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper"];
    
    Recipes *recipe2 = [Recipes new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 mins";
    recipe2.image = @"mushroom_risotto.jpg";
    recipe2.ingredients = @[@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter"];
    
    Recipes *recipe3 = [Recipes new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 mins";
    recipe3.image = @"full_breakfast.jpg";
    recipe3.ingredients = @[@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil"];
    
    Recipes *recipe4 = [Recipes new];
    recipe4.name =  @"Hamburger";
    recipe4.prepTime = @"30 mins";
    recipe4.image = @"hamburger.jpg";
    recipe4.ingredients = @[@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper"];
    
    Recipes *recipe5 = [Recipes new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 mins";
    recipe5.image = @"ham_and_egg_sandwich.jpg";
    recipe5.ingredients = @[@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese"];
    
    Recipes *recipe6 = [Recipes new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.image = @"creme_brelee.jpg";
    recipe6.ingredients = @[@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water"];
    
    Recipes *recipe7 = [Recipes new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 mins";
    recipe7.image = @"white_chocolate_donut.jpg";
    recipe7.ingredients = @[@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk"];
    
    Recipes *recipe8 = [Recipes new];
    recipe8.name = @"Starbucks Coffee";
    recipe8.prepTime = @"5 mins";
    recipe8.image = @"starbucks_coffee.jpg";
    recipe8.ingredients = @[@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream"];

    
    Recipes *recipe9 = [Recipes new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 mins";
    recipe9.image = @"vegetable_curry.jpg";
    recipe9.ingredients = @[@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water"];
    
    Recipes *recipe10 = [Recipes new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 mins";
    recipe10.image = @"instant_noodle_with_egg.jpg";
    recipe10.ingredients = @[@"1 pack of Instant Noodle", @"2 eggs"];

    
    Recipes *recipe11 = [Recipes new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 mins";
    recipe11.image = @"noodle_with_bbq_pork.jpg";
    recipe11.ingredients = @[@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper"];

    
    Recipes *recipe12 = [Recipes new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.image = @"japanese_noodle_with_pork.jpg";
    recipe12.ingredients = @[@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops"];
    
    Recipes *recipe13 = [Recipes new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.image = @"green_tea.jpg";
    recipe13.ingredients = @[@"Green tea"];

    
    Recipes *recipe14 = [Recipes new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.image = @"thai_shrimp_cake.jpg";
    recipe14.ingredients = @[@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves"];
    
    Recipes *recipe15 = [Recipes new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.image =  @"angry_birds_cake.jpg";
    recipe15.ingredients = @[@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk"];
    
    Recipes *recipe16 = [Recipes new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 mins";
    recipe16.image = @"ham_and_cheese_panini.jpg";
    recipe16.ingredients = @[@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham"];

    
    // create an array to store the recipe objects in
    recipes = [@[recipe1,recipe2,recipe3,recipe4,recipe5,recipe6,recipe7,recipe8,recipe9,recipe10,recipe11,recipe12,recipe13,recipe14,recipe15,recipe16]mutableCopy];
    
    self.tableView.rowHeight = 71;
    
    // create search controller
    mySearchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    [mySearchController.searchBar sizeToFit]; // makes the search bar visible
    self.tableView.tableHeaderView = mySearchController.searchBar;
    self.definesPresentationContext = YES;
    mySearchController.dimsBackgroundDuringPresentation = NO;
    mySearchController.searchResultsUpdater = self; // make the current instance responsible for updating the search results
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)filterContentForSearch:(NSString *)searchText
{
    // create an NSpredicate
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name contains [c] %@",searchText];
    searchResults = [recipes filteredArrayUsingPredicate:predicate]; // filter array using predicate
}

- (void)updateSearchResultsForSearchController:(UISearchController *)searchController
{
    [self filterContentForSearch:searchController.searchBar.text];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (mySearchController.isActive) { // if search controller is active, return search results
        return searchResults.count;
    } else {
        return recipes.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdenifier = @"Cell";
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdenifier];
    
    // create the cell, if it doesn't exist
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdenifier];
    }
    
    if (mySearchController.isActive) {
        recipe = searchResults[indexPath.row]; // create a Recipe object and set to the index of the search results array, if the search controller is active

    } else {
        // create a Recipe object and set to the index of the recipe array
        recipe = recipes[indexPath.row];
    }
    
    // display the cell info
    cell.recipeNameLabel.text = recipe.name;
    cell.recipeImageView.image = [UIImage imageNamed:recipe.image];
    cell.recipePrepTimeLabel.text = recipe.prepTime;
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
   // retrieve the recipe detail vc
    RecipeDetailedVC *recipeDetailedVC = [RecipeDetailedVC new];
    recipeDetailedVC.recipe = recipes[indexPath.row]; // set the detail vc recipe property
    
    if (mySearchController.isActive) {
        recipeDetailedVC.recipe = searchResults[indexPath.row];
        
    } else {
        recipe = recipes[indexPath.row];
    }
    
    [self.navigationController pushViewController:recipeDetailedVC animated:YES];
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    [recipes removeObjectAtIndex:indexPath.row]; // remove recipe object
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade]; // delete the object with animation
    
}

@end
