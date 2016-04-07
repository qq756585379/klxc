//
//  CoachCell.m
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "CoachCell.h"
#import "CoachModel.h"

@interface CoachCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconIV;
@property (weak, nonatomic) IBOutlet UIImageView *starIV;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *schoolAgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;

@end

@implementation CoachCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

-(void)setModel:(CoachModel *)model{
//    NSURL *url=[NSURL URLWithString:model.coach_favicon_url];
//    [self.iconIV sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"th_small"]];
//    self.nameLabel.text=model.coach_name;
//    self.schoolAgeLabel.text=[NSString stringWithFormat:@"%@",model.coach_school_age];
//    self.addressLabel.text=model.coach_address;
//    self.priceLabel.text=[NSString stringWithFormat:@"￥%@",model.coach_price];
//    self.distanceLabel.text=@"10km";
}

/**
 {
 "coach_address" = 5555;
 "coach_area" = "\U4e1c\U57ce\U533a";
 "coach_city" = "\U5317\U4eac";
 "coach_driving_years" = 55;
 "coach_favicon_url" = "http://114.55.54.228:89/images/\U5949\U8d24IMG_1941.JPG";
 "coach_image1_url" = "";
 "coach_image2_url" = "";
 "coach_lesson" = C3;
 "coach_name" = 55;
 "coach_price" = 55;
 "coach_school_age" = 55;
 "coach_school_name" = 55;
 "coach_sex" = 0;
 tid = 21;
 }
 */

@end
