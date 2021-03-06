//
//  HSViewController.m
//  FunkySegmentBar
//
//  Created by funkyHS on 06/12/2017.
//  Copyright (c) 2017 funkyHS. All rights reserved.
//

#import "HSViewController.h"
#import "HSSementBarVC.h"

@interface HSViewController ()

@property (nonatomic, weak) HSSementBarVC *segmentBarVC;


@end

@implementation HSViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    // 300
//    CGFloat width = [UIScreen mainScreen].bounds.size.width;
//    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, 300, 35);
//    self.navigationItem.titleView = self.segmentBarVC.segmentBar;

    //self.navigationItem.titleView.backgroundColor = [UIColor blackColor];
    self.segmentBarVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentBarVC.view];
    
    
    
    NSArray *items = @[@"专辑", @"声音", @"下载中",@"专辑", @"声音", @"下载中"];
    
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    
    UIViewController *vc1 = [UIViewController new];
    vc1.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc2 = [UIViewController new];
    vc2.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc3 = [UIViewController new];
    vc3.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *vc4 = [UIViewController new];
    vc4.view.backgroundColor = [UIColor redColor];
    
    UIViewController *vc5 = [UIViewController new];
    vc5.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc6 = [UIViewController new];
    vc6.view.backgroundColor = [UIColor yellowColor];
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3,vc4,vc5,vc6]];
    
    
    [self.segmentBarVC.segmentBar updateWithConfig:^(HSSegmentBarConfig *config) {
        
        //config.segmentBarBackColor = [UIColor cyanColor];
        config.indicatorExtraW = 0;
        //config.barBtnW = 100;
        config.isShowMore = YES;
        config.segSelectedFont = [UIFont systemFontOfSize:13];
        
    }];
    

    
}




#pragma mark - 懒加载

- (HSSementBarVC *)segmentBarVC {
    if (!_segmentBarVC) {
        HSSementBarVC *vc = [[HSSementBarVC alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}

@end
