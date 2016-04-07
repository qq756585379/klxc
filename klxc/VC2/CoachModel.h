//
//  CoachModel.h
//  klxc
//
//  Created by sctto on 16/3/29.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoachModel : NSObject

@property(nonatomic,copy)NSString *coach_address;
@property(nonatomic,copy)NSString *coach_area;
@property(nonatomic,copy)NSString *coach_city;
@property(nonatomic,copy)NSString *coach_driving_years;
@property(nonatomic,copy)NSString *coach_favicon_url;
@property(nonatomic,copy)NSString *coach_image1_url;
@property(nonatomic,copy)NSString *coach_image2_url;
@property(nonatomic,copy)NSString *coach_lesson;
@property(nonatomic,copy)NSString *coach_name;
@property(nonatomic,copy)NSString *coach_price;
@property(nonatomic,copy)NSString *coach_school_age;
@property(nonatomic,copy)NSString *coach_school_name;
@property(nonatomic,copy)NSString *coach_sex;
@property(nonatomic,copy)NSString *tid;

-(instancetype)initWithDict:(NSDictionary *)dict;

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
