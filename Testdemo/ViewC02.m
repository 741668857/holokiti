//
//  ViewC02.m
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];
    NSLog(@"第二个视图第一次加载");
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"第二个视图即将出现");
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"第二个视图已经显示");
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"第二个视图已经消失");
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //使当前控制器消失
    [self dismissViewControllerAnimated:YES completion:nil];
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
