//
//  MenuViewController.m
//  SideBarMenu
//
//  Created by KaL on 6/7/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "MenuViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController
{
    NSArray *menuCellNames;
    NSArray *menuCellImages;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    menuCellNames = @[@"APPCODA",@"News",@"Comments",@"Map",@"Calendar",@"Wishlist",@"Bookmark",@"Tag"];
    menuCellImages = @[@"",@"news",@"comments",@"Treehouse",@"calendar",@"bag",@"book",@"ticket"];
    
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
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"title";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // create the cell, if it does not exist
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = menuCellNames[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:menuCellImages[indexPath.row]];
    

    return cell;
}


@end
