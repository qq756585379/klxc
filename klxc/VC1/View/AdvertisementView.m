//
//  AdvertisementView.m
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "AdvertisementView.h"

@interface AdvertisementView () <UIScrollViewDelegate>
{
    UIScrollView   *_sv;
    UIPageControl  *_pageCtrl;
    NSTimer        *_timer;
}
@end

@implementation AdvertisementView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self createSubViews];
    }
    return self;
}

-(void)createSubViews{
    _sv=[[UIScrollView alloc]initWithFrame:self.frame];
    _sv.contentSize=CGSizeMake(self.width*4, 0);
    _sv.pagingEnabled=YES;
    _sv.delegate=self;
    _sv.bounces=YES;
    _sv.showsHorizontalScrollIndicator=NO;
    [self addSubview:_sv];
    
    for (int i=0; i<4; i++) {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(i*self.width, 0, self.width,self.height)];
        [imageView setImage:[UIImage imageNamed:@"AdImage"]];
        [_sv addSubview:imageView];
    }
  
    UIPageControl *pageControl = [[UIPageControl alloc] init];
    pageControl.numberOfPages = 4;
    pageControl.backgroundColor = [UIColor redColor];
    pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    pageControl.pageIndicatorTintColor = RGBCOLOR(189, 189, 189);
    pageControl.centerX = ScreenW * 0.5;
    pageControl.centerY = self.height - 10;
    [self addSubview:pageControl];
    _pageCtrl = pageControl;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    // 主线程也会抽时间处理一下timer（不管主线程是否正在其他事件）
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

-(void)timeAction{
    if (_sv.contentOffset.x<3*self.frame.size.width) {
        _sv.contentOffset=CGPointMake(_sv.contentOffset.x+self.width, 0);
    }else{
        _sv.contentOffset=CGPointMake(0, 0);
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    double page = scrollView.contentOffset.x / scrollView.width;
    _pageCtrl.currentPage = (int)(page + 0.5);
}

@end
