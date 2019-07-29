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

- (void) createUI{
    UILabel* label=[[UILabel alloc] init];
    
    label.text=@"hallo world";
    label.frame=CGRectMake(100, 100, 100, 40);
    label.backgroundColor=[UIColor greenColor];
    label.textColor=[UIColor blueColor];
    label.shadowOffset=CGSizeMake(10, 10);
    label.shadowColor=[UIColor blackColor];
    label.font=[UIFont systemFontOfSize:15];
    [self.view addSubview:label];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
