//
//  CoachDetailVC.m
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "CoachDetailVC.h"
#import "CoachModel.h"

@interface CoachDetailVC ()
@property (weak, nonatomic) IBOutlet UIImageView *iconIV;
@property (weak, nonatomic) IBOutlet UILabel *coachNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *schoolAgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *carTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *drivingSchoolLabel;
@property (weak, nonatomic) IBOutlet UILabel *schoolAddressLabel;
@property (weak, nonatomic) IBOutlet UIImageView *iv1;
@property (weak, nonatomic) IBOutlet UIImageView *iv2;
@end

@implementation CoachDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"教练";
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

//    NSURL *url=[NSURL URLWithString:_model.coach_favicon_url];
//    [self.iconIV sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"th_small"]];
//    [self.coachNameLabel setText:_model.coach_name];
//    [self.schoolAgeLabel setText:[NSString stringWithFormat:@"驾龄：%@",_model.coach_school_age]];
//    [self.distanceLabel setText:@"距离：13km"];
//    [self.carTypeLabel setText:_model.coach_lesson];
//    self.drivingSchoolLabel.text=_model.coach_school_name;
//    self.schoolAddressLabel.text=_model.coach_address;
//    [self.iv1 sd_setImageWithURL:[NSURL URLWithString:_model.coach_image1_url] placeholderImage:[UIImage imageNamed:@"pic"]];
//    [self.iv2 sd_setImageWithURL:[NSURL URLWithString:_model.coach_image2_url] placeholderImage:[UIImage imageNamed:@"pic"]];
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
