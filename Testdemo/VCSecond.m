//
//  VCSecond.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor orangeColor];
    self.navigationItem.title=@"弟弟行为";
    UIBarButtonItem* rightbtn=[[UIBarButtonItem alloc]initWithTitle:@"来追我呀" style:UIBarStyleDefault target:self action:@selector(rightButton)];
    self.navigationItem.rightBarButtonItem=rightbtn;
    UIBarButtonItem* leftbtn=[[UIBarButtonItem alloc]initWithTitle:@"我要逃跑" style:UIBarStyleDefault target:self action:@selector(leftButton)];
    self.navigationItem.leftBarButtonItem=leftbtn;
    // Do any additional setup after loading the view.
}

-(void)rightButton{
    VCThird* vc=[[VCThird alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

-(void)leftButton{
    [self.navigationController popViewControllerAnimated:YES];
    
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
