//
//  RecipeDetailedVC.m
//  OOPCustomTable
//
//  Created by KaL on 6/2/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "RecipeDetailedVC.h"
#import "TableViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface RecipeDetailedVC ()

@end

@implementation RecipeDetailedVC

- (void)viewDidLoad {
    [super viewDidLoad];
            
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.recipe.name;
    
    UIImageView *photoFrame = [[UIImageView alloc] initWithFrame:CGRectMake(10, 75, SCREEN_WIDTH - 20, (SCREEN_HEIGHT/2) - 80)];
    photoFrame.image = [UIImage imageNamed:@"photo-frame"];
    [self.view addSubview:photoFrame];
    int photoFrameHeight = photoFrame.frame.size.height;
    
    UIImageView *myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(photoFrame.bounds.size.width * .03,
                                                                             photoFrame.bounds.size.height * .035,
                                                                             photoFrame.bounds.size.width * .94,
                                                                             photoFrame.bounds.size.height * .86)];
    myImageView.contentMode = UIViewContentModeScaleAspectFill;
    myImageView.clipsToBounds = YES;
    myImageView.image = [UIImage imageNamed:self.recipe.image];
    [photoFrame addSubview:myImageView];
    
    UILabel *ingredientsLabel = [[UILabel alloc] initWithFrame:CGRectMake(15,75 + photoFrameHeight, SCREEN_WIDTH/2.5, 30)];
    ingredientsLabel.adjustsFontSizeToFitWidth = YES;
    ingredientsLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:24];
    ingredientsLabel.textColor = [UIColor blackColor];
    ingredientsLabel.text = @"Ingredients";
    [self.view addSubview:ingredientsLabel];
    
    UILabel *prepTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 125, 75 + photoFrameHeight, 110, 30)];
    prepTimeLabel.backgroundColor = [UIColor redColor];
    prepTimeLabel.font = [UIFont systemFontOfSize:24];
    prepTimeLabel.adjustsFontSizeToFitWidth = YES;
    prepTimeLabel.textColor = [UIColor whiteColor];
    prepTimeLabel.textAlignment = NSTextAlignmentCenter;
    prepTimeLabel.layer.cornerRadius = 2;
    prepTimeLabel.layer.masksToBounds = YES;
    prepTimeLabel.text = self.recipe.prepTime;
    [self.view addSubview:prepTimeLabel];

        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(15, 75 + photoFrameHeight + 30 + 15, SCREEN_WIDTH - 30, SCREEN_HEIGHT - (75 + photoFrameHeight + 30 + 15) - 60)];
    textView.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:textView];
    
    
    // create a mutable string
    NSMutableString *ingredientsText = [NSMutableString string];
    
    // create a for loop to loop thru the ingredients array
    for (NSString* ingredient in self.recipe.ingredients) {
        [ingredientsText appendFormat:@"%@\n", ingredient];
        textView.text = ingredientsText;

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
