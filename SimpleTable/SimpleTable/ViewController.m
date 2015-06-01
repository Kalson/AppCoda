//
//  ViewController.m
//  SimpleTable
//
//  Created by KaL on 5/23/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource> // volunteer the viewcontroller to conform to the tableView protocols

@end

@implementation ViewController
{
    // declare the objects here to be global
    NSMutableArray *recipes;
    UITableView *myTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // create TableView
    myTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    
    // tell the viewcontroller he's the delegate and the datasource to the tableView protocols
    myTableView.delegate = self;
    myTableView.dataSource = self;
    [self.view addSubview:myTableView];
    
    // init the array with a list of Recipe Names
    recipes = [@[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger",
                @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee",
                @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese",
                @"Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"]mutableCopy];
    
}

// to autolayout when rotating the phone
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context)
     {
         CGRect landscapeFrame = [UIScreen mainScreen].bounds;
         myTableView.frame = landscapeFrame;
         
     } completion:^(id<UIViewControllerTransitionCoordinatorContext> context)
     {
         
     }];
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return recipes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    // create a cell and make it reusable with the cellIdentifier
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // create the cell if it does not exist
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // displaying the indexes from the recipe array
    cell.textLabel.text = recipes[indexPath.row];
    
    // display the images for the cell
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // remove item from the array
    [recipes removeObjectAtIndex:indexPath.row];
    
    // reload the tableview
//    [myTableView reloadData];
    
    // deletes the row with animation
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
