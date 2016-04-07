//
//  Account.h
//  klxc
//
//  Created by sctto on 16/3/30.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

@property(nonatomic,copy)NSString *balance;
@property(nonatomic,copy)NSString *telephone;
@property(nonatomic,copy)NSString *user_age;
@property(nonatomic,copy)NSString *user_id;
@property(nonatomic,copy)NSString *user_image;
@property(nonatomic,copy)NSString *user_name;
@property(nonatomic,copy)NSString *user_nicname;
@property(nonatomic,copy)NSString *user_sex;
@property(nonatomic,copy)NSString *user_source;
@property(nonatomic,copy)NSString *user_type;
@property(nonatomic,copy)NSString *user_wallet_tid;

/*
 data =    
 {
 balance = 0;
 telephone = 13211111111;
 
 "user_age" = 0;
 "user_id" = 1;
 "user_image" = "http://192.168.1.101:89/images/default.png";
 "user_name" = 13211111111;
 "user_nicname" = "\U90b1\U9759";
 "user_sex" = 0;
 "user_source" = 0;
 "user_type" = 0;
 "user_wallet_tid" = 0;
 };
 */

@end
