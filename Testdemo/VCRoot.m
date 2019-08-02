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
    UIButton* btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame=CGRectMake(50, 50, 100, 100);
    [btn1 setTitle:@"写入文件" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton* btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame=CGRectMake(50, 100, 100, 100);
    [btn2 setTitle:@"读取文件" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    


    // Do any additional setup after loading the view.
}

-(void)pressWrite{
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
    [ud setObject:@"123" forKey:@"name"];
    NSNumber *num=[NSNumber numberWithInt:156];
    [ud setObject:num forKey:@"num"];
    [ud setInteger:123 forKey:@"integer"];
    [ud setBool:NO forKey:@"bool"];
    
    NSArray *array=[NSArray arrayWithObjects:@"11",@"22",@"33",nil ];
    [ud setObject:array forKey:@"array"];
    
    
}

-(void)pressRead{
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];
    id object=[ud objectForKey:@"num"];
    NSString *name=(NSString*)object;
    NSLog(@"num=%@",name);
    
    object=[ud objectForKey:@"name"];
    NSString *name1=(NSString*)object;
    NSLog(@"name=%@",name1);
    
    NSInteger integer=[ud integerForKey:@"integer"];
    NSLog(@"int=%d",integer);
    
    BOOL bool1=[ud integerForKey:@"bool"];
    NSLog(@"bool=%d",bool1);
    
    NSArray  *array=[ud objectForKey:@"array"];
    NSLog(@"array=%@",array);
    
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
