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
@synthesize alertview=_alertview;
@synthesize indicator=_indicator;





- (void)viewDidLoad {
    [super viewDidLoad];
    for(int i=0;i<2;i++){
        UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame=CGRectMake(100, 100+100*i, 150, 50);
        
        if(i==0){
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        if(i==1){
            [btn setTitle:@"等待提示对话框" forState:UIControlStateNormal];
        }
        [self.view addSubview:btn];
        [btn addTarget:self action:@selector(pressOn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag=101+i;
    }
    
}

-(void)pressOn:(UIButton*)btn{
    if(btn.tag==101){
        //创建警告对话框
        _alertview=[[UIAlertView alloc] initWithTitle:@"电池电量过低" message:@"电池电量只有20%了崽种" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"好的-。-", @"去你的=w=",@"超级节电模式启动OWO", nil];
        [_alertview show];
        
    }
    else if(btn.tag==102){
        //创建等待指示器
        _indicator=[[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(200, 300, 0, 0)];
        _indicator.activityIndicatorViewStyle=UIActivityIndicatorViewStyleGray;
        [_indicator startAnimating];
        [self.view addSubview:_indicator];
        
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"点击对话框😜");
}

-(void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"对话框即将消失");
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    NSLog(@"对话框已经消失");
}


    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
