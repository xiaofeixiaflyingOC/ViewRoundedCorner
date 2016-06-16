//
//  CustomCell.m
//  ViewRoundedCorner
//
//  Created by shengxin on 16/6/16.
//  Copyright © 2016年 shengxin. All rights reserved.
//

#import "CustomCell.h"
#import "UIImage+ImageRoundedCorner.h"
#import "UIView+ViewRoundedCorner.h"

@implementation CustomCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.iImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
//        self.iImageView.layer.cornerRadius = 10;
//        self.iImageView.layer.masksToBounds = YES;
        UIImage *image = [UIImage imageNamed:@"fir_icon.png"];
        image =  [image imageAddCornerWithRadius:10 andSize:CGSizeMake(60, 60)];
        [self.iImageView setImage:image];
        [self.contentView addSubview:self.iImageView];
        
        self.contentView.backgroundColor = [UIColor blackColor];
        
        self.tLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 100, 60)];
        [self.tLabel kt_addCornerRadius:10 andBorderWidth:2.0 andBackGroundColor:[UIColor grayColor] andBorderColor:[UIColor clearColor]];
        self.tLabel.text = @"阿萨德法师法师法撒旦法师法师法";
        [self.contentView addSubview:self.tLabel];
    }
    return self;
}
@end
