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
@synthesize textfield=_textfield;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.textfield=[[UITextField alloc]init];
    self.textfield.frame=CGRectMake(100, 100, 200, 50);
    self.textfield.text=@"HALLO";
    self.textfield.font=[UIFont systemFontOfSize:15];
    self.textfield.textColor=[UIColor blackColor];
    //边框风格
    self.textfield.borderStyle=UITextBorderStyleRoundedRect;
    self.textfield.keyboardType=UIKeyboardTypeDefault;
    //没有内容时的提示信息
    self.textfield.placeholder=@"写d野啦唔该";
    //是否作为密码输入
    self.textfield.secureTextEntry=NO;
    [self.view addSubview:self.textfield];
    
}

//点击屏幕空白出调用次函数，使虚拟键盘回收不再作为第一响应
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //self.textfield.text=@"";
    [self.textfield resignFirstResponder];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑");
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"结束编译");
}

//是否可以进行输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
}

//是否可以结束输入
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return NO;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
