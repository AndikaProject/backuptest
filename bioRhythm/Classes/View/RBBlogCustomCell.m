//
//  RBBlogCustomCell.m
//  Brightr
//
//  Created by Tjaraka Asset on 8/29/14.
//  Copyright (c) 2014 Tjaraka Asset. All rights reserved.
//

#import "RBBlogCustomCell.h"

@implementation RBBlogCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
