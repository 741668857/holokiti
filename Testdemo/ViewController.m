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
    [super viewDidLoad];
    UIView* view01=[[UIView alloc] init];
    view01.frame=CGRectMake(100, 100, 200, 200);
    view01.backgroundColor=[UIColor blueColor];
    
    UIView* view02=[[UIView alloc] init];
    view02.frame=CGRectMake(150, 150, 200, 200);
    view02.backgroundColor=[UIColor greenColor];
    
    UIView* view03=[[UIView alloc] init];
    view03.frame=CGRectMake(200, 200, 200, 200);
    view03.backgroundColor=[UIColor blackColor];
    
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    [self.view addSubview:view01];
    
    [self.view bringSubviewToFront:view01];
    [self.view sendSubviewToBack:view03];
    
    
    UIView* viewfront=self.view.subviews[0];
    if(viewfront==view03){
        NSLog(@"hahaha");
    }
    

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
