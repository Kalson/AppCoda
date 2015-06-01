//
//  ViewController.m
//  HelloWorld
//
//  Created by KaL on 5/22/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "ViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController
{
    UIButton *hwButton;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create Hello World Button
    hwButton = [[UIButton alloc]initWithFrame:CGRectMake((SCREEN_WIDTH - 100)/2, (SCREEN_HEIGHT - 40)/2, 100, 40)];
    [hwButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [hwButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [hwButton setTitle:@"Hello World" forState:UIControlStateNormal];
    [hwButton addTarget:self action:@selector(showHelloMessage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hwButton];
    
}

- (void)showHelloMessage
{
    
    // create the alert controller
    UIAlertController *helloAlert = [UIAlertController alertControllerWithTitle:nil message:@"Hello World" preferredStyle:UIAlertControllerStyleAlert];
    
    // create the the alert actions
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"OK");
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"Cancel");
    }];

    // add the actions to the Alert Controller
    [helloAlert addAction:okayAction];
    [helloAlert addAction:cancelAction];

    // show the alert Controller
    [self presentViewController:helloAlert animated:YES completion:nil];
    
    NSLog(@"Hello World");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
