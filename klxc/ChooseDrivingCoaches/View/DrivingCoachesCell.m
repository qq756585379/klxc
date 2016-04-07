//
//  DrivingCoachesCell.m
//  klxc
//
//  Created by sctto on 16/3/25.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "DrivingCoachesCell.h"
#import "CoachModel.h"

@implementation DrivingCoachesCell

-(void)setCoach:(CoachModel *)coach{
    _coach=coach;
    [_coachIcon sd_setImageWithURL:[NSURL URLWithString:coach.coach_image1_url] placeholderImage:[UIImage imageNamed:@"taec"]];
}

@end
