//
//  NewFeatureVC.m
//  klxc
//
//  Created by sctto on 16/3/30.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "NewFeatureVC.h"
#import "YJTabBarVC.h"
#define NewfeatureCount 3

@interface NewFeatureVC () <UIScrollViewDelegate>

@property (nonatomic, weak) UIPageControl *pageControl;
@property (nonatomic, weak) UIScrollView *scrollView;

@end

@implementation NewFeatureVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    for (int i=0; i<NewfeatureCount; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i*ScreenW, 0, ScreenW, ScreenH)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"引导页－%d",i+1]];
        [scrollView addSubview:imageView];
    }
    scrollView.contentSize = CGSizeMake(NewfeatureCount * ScreenW, 0);
    scrollView.bounces = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.delegate = self;
    //
    UIPageControl *pageControl = [[UIPageControl alloc] init];
    pageControl.numberOfPages = NewfeatureCount;
    pageControl.backgroundColor = [UIColor redColor];
    pageControl.currentPageIndicatorTintColor = RGBCOLOR(253, 98, 42);
    pageControl.pageIndicatorTintColor = RGBCOLOR(189, 189, 189);
    pageControl.centerX = ScreenW * 0.5;
    pageControl.centerY = ScreenH - 50;
    [self.view addSubview:pageControl];
    self.pageControl = pageControl;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    double page = scrollView.contentOffset.x / scrollView.width;
    self.pageControl.currentPage = (int)(page + 0.5);
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    if (scrollView.contentOffset.x+ScreenW>ScreenW*NewfeatureCount) {
        YJWindow.rootViewController=[[YJTabBarVC alloc] init];
    }
}


@end
