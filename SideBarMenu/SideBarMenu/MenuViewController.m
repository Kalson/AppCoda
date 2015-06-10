//
//  MenuViewController.m
//  SideBarMenu
//
//  Created by KaL on 6/7/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "MenuViewController.h"
#import "SWRevealViewController.h"
#import "MainViewController.h"
#import "MapViewController.h"
#import "PhotoViewController.h"


@interface MenuViewController ()

@end

@implementation MenuViewController
{
    NSArray *menuItems;
    NSArray *menuImages;
    
    MainViewController *mainVC;
    MapViewController *mapVC;
    PhotoViewController *photoVC;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    menuItems = @[@"APPCODA",@"News",@"Comments",@"Map",@"Calendar",@"Wishlist",@"Bookmark",@"Tag"];
    menuImages = @[@"",@"news",@"comments",@"Treehouse",@"calendar",@"bag",@"book",@"ticket"];
    
    mainVC = [MainViewController new];
    mapVC = [MapViewController new];
    photoVC = [PhotoViewController new];
    
    
    [self.tableView reloadData];

    
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
    return menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"title";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // create the cell, if it does not exist
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = menuItems[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:menuImages[indexPath.row]];
    

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // retrive the reveal View Controller
    SWRevealViewController *revealVC = self.revealViewController;
    
    // selecting row
    NSInteger row = indexPath.row;
    
    UIViewController *mainViewC;
    
    if (row == 0)
    {
        mainViewC = mainVC;

    }
    
    else if (row == 3)
    {
        mainViewC = mapVC;
    }
    
    else 
    {
        mainViewC = photoVC;
        photoVC.imageView.image = [UIImage imageNamed:menuImages[indexPath.row]];

    }
    
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:mainViewC];
    navC.title = menuItems[indexPath.row];
    [revealVC pushFrontViewController:navC animated:YES];
    
    // fixes the view from being framed by nav bar
    navC.navigationBar.translucent = NO;
    
}


@end
