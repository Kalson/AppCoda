//
//  CustomTableViewCell.m
//  CustomTable
//
//  Created by KaL on 5/26/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "CustomTableViewCell.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation CustomTableViewCell

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
    if (self) {
     
        // create the name label for custom Cell
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, SCREEN_WIDTH - 80, 20)];
        self.nameLabel.font = [UIFont fontWithName:@"Helvetica" size:18];
        [self.contentView addSubview:self.nameLabel];
        
        // create the prep Time Label for custom Cell
        self.prepTimeLabel = [[UILabel alloc] initWithFrame:CGRectMake(70, 35, SCREEN_WIDTH - 80, 20)];
        self.prepTimeLabel.text = @"Prep Time";
        self.prepTimeLabel.font = [UIFont fontWithName:@"Helvetica-Light" size:18];
        [self.contentView addSubview:self.prepTimeLabel];
        
        // create the thumbnail Image for custom Cell
        self.thumbnailImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        [self.contentView addSubview:self.thumbnailImageView];
    }
    
    return self;
}

@end
