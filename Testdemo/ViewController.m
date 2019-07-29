//
//  ViewController.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    [btn setTintColor:[UIColor blueColor]];
    btn.frame=CGRectMake(100, 100, 150, 100);
    btn.titleLabel.font=[UIFont systemFontOfSize:21];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pressOn) forControlEvents:UIControlStateHighlighted];
    
    
    UIButton* btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"关闭定时器" forState:UIControlStateNormal];
    btn1.frame=CGRectMake(100, 150, 150, 50);
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(pressDown) forControlEvents:UIControlStateHighlighted];
    
    UIView* view=[[UIView alloc]init];
    view.frame=CGRectMake(0, 0, 100, 100);
    view.backgroundColor=[UIColor blueColor];
    [self.view addSubview:view];
    view.tag=101;
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) pressOn{
    timeview1=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer:) userInfo:@"xioaming" repeats:YES];
}

-(void)updateTimer:(NSTimer*)timer{
    NSLog(@"test name=%@",timer.userInfo);
    UIView* view=[self.view viewWithTag:101];
    view.frame=CGRectMake(view.frame.origin.x+5,view.frame.origin.y+5, 100,100);
    
}

-(void)pressDown{
    [timeview1 invalidate];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
