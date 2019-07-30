//
//  ViewController.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    scro=[[UIScrollView alloc]init];
    scro.frame=CGRectMake(0, 20, 420, 682);
    //是否整页滚动视图
    scro.pagingEnabled=YES;
    //是否开启滚动效果
    scro.scrollEnabled=YES;
    //画布的大小，显示在滚动视图内部 一般小于等于frame大小
    scro.contentSize=CGSizeMake(420, 682*3);
    scro.bounces=NO;
    scro.alwaysBounceHorizontal=NO;
    scro.alwaysBounceVertical=NO;
    scro.showsVerticalScrollIndicator=YES;
    scro.backgroundColor=[UIColor blueColor];
    scro.delegate=self;
    //决定画布最终显示结果
    scro.contentOffset=CGPointMake(0, 0);
    
    
    for(int i=0;i<3;i++){
    NSString* strname=[NSString stringWithFormat:@"%d.jpg",i+1];
    UIImage* img=[UIImage imageNamed:strname];
    UIImageView* iv=[[UIImageView alloc]initWithImage:img];
    iv.frame=CGRectMake(0, 682*i, 420, 682);
    [scro addSubview:iv];
    
    }
    [self.view addSubview:scro];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"y=%f",scrollView.contentOffset.y);
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"结束拖动啦");
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"视图即将被拖动");
}

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"视图即将结束拖动");
}


-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"视图已经停止jiansu");
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"视图即将被减速");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [scro scrollRectToVisible:CGRectMake(0, 0, 420, 682) animated:YES ];
}


    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
