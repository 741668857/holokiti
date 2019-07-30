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
    _pinGes=[[UIPinchGestureRecognizer alloc ]initWithTarget:self action:@selector(PinGes:)];
    [imgview addGestureRecognizer:_pinGes];
    _roGes=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(Roges:)];
    [imgview addGestureRecognizer:_roGes];
    _roGes.delegate=self;
    _pinGes.delegate=self;
    
 
}

-(void)PinGes:(UIPinchGestureRecognizer*) pinch{
    UIImageView* imgv=(UIImageView*)pinch.view;
    imgv.transform=CGAffineTransformScale(imgv.transform, pinch.scale, pinch.scale);
    pinch.scale=1;
}

-(void)Roges:(UIRotationGestureRecognizer*)ros{
    UIImageView* imgv=(UIImageView*)ros.view;
    imgv.transform=CGAffineTransformRotate(imgv.transform, ros.rotation);
    ros.rotation=0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
