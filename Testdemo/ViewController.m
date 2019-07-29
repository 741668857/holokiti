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
@synthesize stepper=_stepper;
@synthesize seg=_seg;




- (void)viewDidLoad {
    [super viewDidLoad];
    _stepper=[[UIStepper alloc]init];
    //宽度可变，高度不变
    _stepper.frame=CGRectMake(50, 50, 30, 0);
    _stepper.minimumValue=0;
    _stepper.maximumValue=9000;
    _stepper.value=100;
    _stepper.stepValue=100;
    [self.view addSubview:_stepper];
    [_stepper addTarget:self action:@selector(stepchange) forControlEvents:UIControlEventValueChanged];
    //是否一直显示步进结果
    _stepper.continuous=YES;
    
    _seg=[[UISegmentedControl alloc]init];
    _seg.frame=CGRectMake(7, 200, 400, 40);
    [_seg insertSegmentWithTitle:@"好" atIndex:0 animated:NO];
    [_seg insertSegmentWithTitle:@"很好" atIndex:1 animated:NO];
    [_seg insertSegmentWithTitle:@"非常好" atIndex:2 animated:NO];
    
    _seg.selectedSegmentIndex=0;
    
    [_seg addTarget:self action:@selector(presson) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_seg];
    
   
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)presson{
    NSLog(@"%d",_seg.selectedSegmentIndex);
}

-(void)stepchange{
    NSLog(@"value= %f",_stepper.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
