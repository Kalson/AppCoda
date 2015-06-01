//
//  TableViewCell.m
//  OOPSimpleTable
//
//  Created by KaL on 6/1/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "TableViewCell.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        
        self.recipeNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, SCREEN_WIDTH - 80, 25)];
        [self.contentView addSubview:self.recipeNameLabel];
        
        self.recipePrepTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 35, SCREEN_WIDTH - 80, 25)];
        [self.contentView addSubview:self.recipePrepTimeLabel];
        
        self.recipeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        [self.contentView addSubview:self.recipeImageView];
        
        NSLog(@"%@",self.recipeNameLabel);
        
    }
    
    return self;
}

@end
