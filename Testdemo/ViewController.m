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

-(void) UIbutton{
    UIButton* btn0=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton* btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn0.frame=CGRectMake(100, 100, 100, 100);
    btn1.frame=CGRectMake(0, 200, 300, 100);
    btn0.titleLabel.font=[UIFont systemFontOfSize:50];
    btn1.titleLabel.font=[UIFont systemFontOfSize:50];
    [btn0 setTitle:@"abc" forState:UIControlStateNormal];
    [btn1 setTitle:@"qpqp" forState:UIControlStateNormal];
    [btn0 addTarget:self action:@selector(pressbtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(pressbtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn0 addTarget:self action:@selector(losebtn) forControlEvents:UIControlEventTouchDown];
    [btn1 addTarget:self action:@selector(losebtn) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn0];
    [self.view addSubview:btn1];
    btn0.tag=100;
    btn1.tag=101;
    
}


-(void) losebtn{
    NSLog(@"触碰到按钮");
}

-(void)pressbtn:(UIButton*)btn{
    if(btn.tag==100){
        NSLog(@"第一个手指松开");
    }
    
    if(btn.tag==101){
        NSLog(@"第二个手指松开");
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self UIbutton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
