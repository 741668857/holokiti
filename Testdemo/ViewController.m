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
    UIImage* img=[UIImage imageNamed:@"1.jpg"];
    imgview=[[UIImageView alloc ]init];
    imgview.frame=CGRectMake(10, 100, 340, 460);
    imgview.image=img;
    [self.view addSubview:imgview];
    imgview.userInteractionEnabled=YES;
    UITapGestureRecognizer* tap1=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOneAct)];
    tap1.numberOfTapsRequired=1;
    tap1.numberOfTouchesRequired=1;
    [imgview addGestureRecognizer:tap1];
    
    UITapGestureRecognizer* tap2=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTwoAct)];
    tap2.numberOfTapsRequired=2;
    tap2.numberOfTouchesRequired=1;
    [imgview addGestureRecognizer:tap2];
    [tap1 requireGestureRecognizerToFail:tap2];
}

-(void)tapOneAct{
    [UIView beginAnimations:nil context:nil];
    imgview.frame=CGRectMake(0, 0, 400, 500);
    [UIView commitAnimations];
    NSLog(@"单次点击");
}

-(void )tapTwoAct{
    [UIView beginAnimations:nil context:nil];
    imgview.frame=CGRectMake(10, 100, 340, 460);
    [UIView commitAnimations];
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
