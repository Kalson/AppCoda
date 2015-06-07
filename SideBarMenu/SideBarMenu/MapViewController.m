//
//  MapViewController.m
//  SideBarMenu
//
//  Created by KaL on 6/7/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "MapViewController.h"
#import "SWRevealViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    // retrive the reveal View Controller
    SWRevealViewController *revealVC = self.revealViewController;
    
    // create the sidebar button
    UIBarButtonItem *sideBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:revealVC action:@selector(revealToggle:)];
    self.navigationItem.leftBarButtonItem = sideBarButton;
    
    if (revealVC) {
        // lets you slide the main/content view to the left/right
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
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
