//
//  TableViewController.m
//  CustomTable
//
//  Created by KaL on 5/23/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"
#import "RecipesVC.h"

@interface TableViewController ()

@end

@implementation TableViewController
{
    // declare the arrays
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *recipePrepTimes;
    
    // create an array of 16 indexes with bool values
    BOOL recipeChecked[16];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
 
    ///////// replacement for the code that was hard coded before
    
    // create a path to retrieve the plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Recipes" ofType:@"plist"];
    
    // create a dictionary to connect/read the key/value pairs in the plist
    NSDictionary *myDic = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    // retrieve the recipe names, images, and prep times from the plist
    recipeNames = [myDic objectForKey:@"Name"];
    recipeImages = [myDic objectForKey:@"Image"];
    recipePrepTimes = [myDic objectForKey:@"PrepTime"];
    
    // set the row height to 71
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
    return recipeNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // create the cell identifier
    static NSString *cellIdentifier = @"Cell";
    
    // create the table view cells and and make the reuseable
    // changed to the Custom Table View cell, which means here we're creating an object from that class
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // create the cells if they dont exist
    if (!cell)
    {
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // display the recipe names and the images
    // changed to sync with the Custom Table View Cell
    cell.thumbnailImageView.image = [UIImage imageNamed:recipeImages[indexPath.row]];
    cell.nameLabel.text = recipeNames[indexPath.row];
    cell.prepTimeLabel.text = recipePrepTimes[indexPath.row];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    // Configure the cell...
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // unhighlight
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [rowSelectedAlert dismissViewControllerAnimated:YES completion:nil];
//    });
    
    RecipesVC *recipesVC = [[RecipesVC alloc] init];  // create recipe VC object
    recipesVC.recipeNames = recipeNames[indexPath.row]; // set the recipeVC recipe string with recipeNames array of this TVC
    recipesVC.prepTimes = recipePrepTimes[indexPath.row]; // set the the recipeVC prep TIme to the the array of this TVC
    [self.navigationController pushViewController:recipesVC animated:YES];  // push the recipe VC with navC
        
}



@end
