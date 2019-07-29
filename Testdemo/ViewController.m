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
    NSLog(@"视图第一次被加载");
    self.view.backgroundColor=[UIColor greenColor];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"第一个视图即将出现");
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"第一个视图已经显示");
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"第一个视图已经消失");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建视图控制器二
    ViewC02* vc1=[[ViewC02 alloc]init];
    //显示一个新的视图控制器到屏幕上
    [self presentViewController:vc1 animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
