//
//  VCThird.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"很好。你非常骚";
    self.view.backgroundColor=[UIColor redColor];
    UIBarButtonItem* btn=[[UIBarButtonItem alloc]initWithTitle:@"准备进入地狱吧～" style:UIBarStyleDefault target:self action:@selector(rightButton)];
    self.navigationItem.rightBarButtonItem=btn;
    // Do any additional setup after loading the view.
}
-(void)rightButton{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
