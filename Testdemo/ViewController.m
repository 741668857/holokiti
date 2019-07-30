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
    UIScrollView* scro=[[UIScrollView alloc]init];
    scro.frame=CGRectMake(0, 0, 420, 740);
    //是否整页滚动视图
    scro.pagingEnabled=YES;
    //是否开启滚动效果
    scro.scrollEnabled=YES;
    //画布的大小，显示在滚动视图内部 一般小于等于frame大小
    scro.contentSize=CGSizeMake(420*4, 740);
    scro.bounces=YES;
    scro.alwaysBounceHorizontal=YES;
    scro.alwaysBounceVertical=NO;
    scro.showsHorizontalScrollIndicator=YES;
    scro.backgroundColor=[UIColor blueColor];
    
    
    for(int i=1;i<4;i++){
    NSString* strname=[NSString stringWithFormat:@"%d.jpg",i];
    UIImage* img=[UIImage imageNamed:strname];
    UIImageView* iv=[[UIImageView alloc]initWithImage:img];
    iv.frame=CGRectMake(420*(i-1), 0, 420, 740);
    [scro addSubview:iv];
    
    }
    [self.view addSubview:scro];
    
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
