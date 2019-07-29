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
@synthesize pView=_proview;
@synthesize sliber=_sliber;




- (void)viewDidLoad {
    [super viewDidLoad];
    _proview=[[UIProgressView alloc]init];
    _proview.frame=CGRectMake(0, 100, 400, 20);
    [self.view addSubview:_proview];
    //进度条颜色
    _proview.progressTintColor=[UIColor redColor];
    _proview.progress=0.6;
    //进度条类型
    _proview.progressViewStyle=UIProgressViewStyleBar;
    //进度条背景颜色
    _proview.trackTintColor=[UIColor blueColor];
    
    _sliber=[[UISlider alloc]init];
    _sliber.frame=CGRectMake(0, 200, 400, 20);
    _sliber.maximumValue=100;
    _sliber.minimumValue=-120;
    _sliber.value=6;
    _sliber.minimumTrackTintColor=[UIColor redColor];
    _sliber.maximumTrackTintColor=[UIColor blackColor];
    [self.view addSubview:_sliber];
    _sliber.thumbTintColor=[UIColor blueColor];
    //添加滑动条时间
    [_sliber addTarget:self action:@selector(sliber1) forControlEvents:UIControlEventValueChanged];
   
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)sliber1{
    _proview.progress=(_sliber.value-_sliber.minimumValue)/(_sliber.maximumValue-_sliber.minimumValue);
    NSLog(@"%f",_sliber.value );
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
