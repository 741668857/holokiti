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

-(void) createUIbutton{
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(100, 100, 200 ,100);
    [btn setTitle:@"abc" forState:UIControlStateNormal];
    [btn setTitle:@"ppp" forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    btn.titleLabel.font=[UIFont systemFontOfSize:30];
    [self.view addSubview:btn];
}

-(void) createImgbtn{
    UIButton* imgbtn=[UIButton buttonWithType:UIButtonTypeCustom];
    imgbtn.frame=CGRectMake(70, 200, 300, 300);
    UIImage* icon1=[UIImage imageNamed:@"UNADJUSTEDNONRAW_thumb_1.jpg"];
    UIImage* icon2=[UIImage imageNamed:@"UNADJUSTEDNONRAW_thumb_5.jpg"];
    [imgbtn setImage:icon1 forState:UIControlStateNormal];
    [imgbtn setImage:icon2 forState:UIControlStateHighlighted];
    [self.view addSubview:imgbtn];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUIbutton];
    [self createImgbtn];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
