//
//  VCRoot.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCRoot.h"





@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"弟弟行为";
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame=CGRectMake(90, 100, 200, 50);
    [btn1 setTitle:@"快来按我呀沙雕" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame=CGRectMake(90, 200, 200, 50);
    [btn2 setTitle:@"别碰这个按钮1" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressBtn2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3.frame=CGRectMake(90, 300, 200, 50);
    [btn3 setTitle:@"别碰这个按钮2" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(pressBtn3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    _lock=[[NSLock alloc]init];
    
    _queue=[[NSOperationQueue alloc]init];
    [_queue setMaxConcurrentOperationCount:5];
 
}

-(void)pressBtn1:(UIButton*)btn{
    [_queue addOperationWithBlock:^{
        while (true) {
            NSLog(@"弟弟行为");
        }
    }];
     }


-(void)actNew:(NSThread*) thread{
    int i=1;
    while (true) {
        i++;
        NSLog(@"i=%d",i);
    }
}

-(void)pressBtn2:(UIButton*)btn{
    _thread1=[[NSThread alloc]initWithTarget:self selector:@selector(act1:) object:nil];
    [_thread1 start];
}
-(void)act1:(NSThread*)thread{
    int i=0;
    while (true) {
        i++;
        if(i>2000){
            break;
    }
         NSLog(@"act1!");
}
}


-(void)pressBtn3:(UIButton*)btn{
    _thread2=[[NSThread alloc]initWithTarget:self selector:@selector(act2:) object:nil];
    [_thread2 start];
}
-(void)act2:(NSThread*)thread{
    int i=0;
    while (true) {
        i++;
        if(i>2000){
            break;
        }
        NSLog(@"act2");
    }
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
