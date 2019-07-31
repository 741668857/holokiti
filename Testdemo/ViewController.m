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
    
    UIPanGestureRecognizer* pan=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(Panges:)];
    [imgview addGestureRecognizer:pan];
    [imgview removeGestureRecognizer:pan];
    
    UISwipeGestureRecognizer* swip=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swip:)];
    swip.direction=UISwipeGestureRecognizerDirectionLeft|UISwipeGestureRecognizerDirectionRight;
    [imgview addGestureRecognizer:swip];
    
    UILongPressGestureRecognizer* longPress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpress:)];
    longPress.minimumPressDuration=0.5;
    [imgview addGestureRecognizer:longPress];
}

-(void)Panges:(UIPanGestureRecognizer*) pan{
    CGPoint pt=[pan translationInView:self.view];
    CGPoint pv=[pan velocityInView:self.view];
    NSLog(@"pt.x=%.2f,pt.y=%.2f",pt.x,pt.y);
    NSLog(@"pv.x=%.2f,pv.y=%.2f",pv.x,pv.y);
}

-(void)swip:(UISwipeGestureRecognizer*) swipe{
    if(swipe.direction & UISwipeGestureRecognizerDirectionLeft){
        NSLog(@"向左移动");
    }
    else if (swipe.direction & UISwipeGestureRecognizerDirectionRight){
        NSLog(@"向右移动");
    }
}

-(void)longpress:(UILongPressGestureRecognizer*) longpress{
    if(longpress.state==UIGestureRecognizerStateBegan){
        NSLog(@"开始状态");
    }
    else if (longpress.state==UIGestureRecognizerStateEnded){
        NSLog(@"结束状态");
    }
    NSLog(@"长安了");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
