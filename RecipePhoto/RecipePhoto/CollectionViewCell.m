//
//  CollectionViewCell.m
//  RecipePhoto
//
//  Created by KaL on 6/5/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.recipeImageView = [[UIImageView alloc]init]; // init the imageView
        [self.contentView addSubview:self.recipeImageView]; // add to the content view
        
    }
    return self;
}

// set layouts of of the imageView
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    // set the imageview to the full bounds of the contentview
    self.recipeImageView.frame = self.contentView.bounds;
}



@end
