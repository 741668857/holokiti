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
@synthesize myswitch=_myswitch;




- (void)viewDidLoad {
    [super viewDidLoad];
    UISwitch* _myswitch=[[UISwitch alloc]init];
    _myswitch.frame=CGRectMake(50, 50, 0, 0);
    [self.view addSubview:_myswitch];
    _myswitch.on=YES;
    //开关开启状态颜色
    [_myswitch setOnTintColor:[UIColor blueColor]];
    //开关圆按钮颜色
    [_myswitch setThumbTintColor:[UIColor grayColor]];
    //开关整体颜色
    [_myswitch setTintColor:[UIColor yellowColor]];
    
    [_myswitch addTarget:self action:@selector(swchange:) forControlEvents:UIControlEventValueChanged];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)swchange:(UISwitch*) sw{
    if(sw.on==YES){
        NSLog(@"开关打开");
    }
    else{
        NSLog(@"开关关闭");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
