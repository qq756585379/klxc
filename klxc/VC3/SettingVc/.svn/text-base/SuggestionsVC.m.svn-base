//
//  SuggestionsVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "SuggestionsVC.h"

@interface SuggestionsVC ()
@property (weak, nonatomic) IBOutlet UIView *bgView1;
@property (weak, nonatomic) IBOutlet UIView *bgView2;
@end

@implementation SuggestionsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=HEXCOLOR(0xeeeeee);
    self.bgView1.layer.borderWidth=0.5;
    self.bgView1.layer.borderColor=UIColorFromRGBA(0x979797, 1.0).CGColor;
    self.bgView1.layer.cornerRadius = 5;
    self.bgView1.clipsToBounds = YES;
    
    self.bgView2.layer.borderWidth=0.5;
    self.bgView2.layer.borderColor=UIColorFromRGBA(0x979797, 1.0).CGColor;
    self.bgView2.layer.cornerRadius = 5;
    self.bgView2.clipsToBounds = YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
