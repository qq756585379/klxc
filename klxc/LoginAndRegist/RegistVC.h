//
//  RegistVC.h
//  快来学车
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    
    YJRegistCtrl,
    YJFindPasswordCtrl,
    
} YJControllerType;

@interface RegistVC : UIViewController

@property(nonatomic,copy)NSString *titleStr;

@property(nonatomic,assign)int ctrlType;

@end
