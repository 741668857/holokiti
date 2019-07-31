//
//  ViewController.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    SuperView* view=[[SuperView alloc]init];
    view.frame=CGRectMake(0, 0, 300, 300);
    view.backgroundColor=[UIColor blueColor];
    [self.view addSubview:view];
    [view createView];
    view.tag=101;
    
    UIButton* btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame=CGRectMake(300, 300, 80, 50);
    [btn1 setTitle:@"放大" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressOnbig) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton* btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame=CGRectMake(300, 400, 80, 50);
    [btn2 setTitle:@"缩小" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressOnsmall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    
    
}
-(void)pressOnbig{
    UIView* view=(UIView*)[self.view viewWithTag:101 ];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    view.frame=CGRectMake(0, 0, 400, 400);
    [UIView commitAnimations];
    
}

-(void)pressOnsmall{
    UIView* view=(UIView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    view.frame=CGRectMake(0, 0, 300, 300);
    [UIView commitAnimations];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
