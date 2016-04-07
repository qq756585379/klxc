//
//  MaskView.h
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    
    albumType,
    takePhotoType,
    
} YJCustomType;

@protocol MaskViewDelegate <NSObject>
@optional
-(void)pickPhotoBtnClickedWithType:(YJCustomType)type;

@end

@interface MaskView : UIView

@property(nonatomic,assign)int YJCustomType;

@property(nonatomic,assign)id <MaskViewDelegate> delegate;

-(void)show;

@end
