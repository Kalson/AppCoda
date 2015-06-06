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
        self.recipeImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.f, 0.f, CGRectGetMaxX(self.contentView.bounds), CGRectGetMaxY(self.contentView.bounds))];
        self.recipeImageView.clipsToBounds = YES;

                                //        self.recipeImageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
         self.recipeImageView.contentMode = UIViewContentModeScaleAspectFill; // scale the content to fit the size of the view

//        imgMiddleView = [[UIImageView alloc] initWithFrame:cell.frame];
//        imgMiddleView.contentMode = UIViewContentModeScaleToFill;
//        imgMiddleView.clipsToBounds = YES;
//        [imgMiddleView setUserInteractionEnabled:YES];
//        imgMiddleView.tag = indexPath.row;
//        
//        [cell addSubview:imgMiddleView];


        self.contentView.frame = CGRectMake(10, 10, 10, 10);
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
