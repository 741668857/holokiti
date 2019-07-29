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
    _textfield=[[UITextField alloc]init];
    _textfield.frame=CGRectMake(100, 100, 200, 50);
    _textfield.text=@"HALLO";
    _textfield.font=[UIFont systemFontOfSize:15];
    _textfield.textColor=[UIColor blackColor];
    //边框风格
    _textfield.borderStyle=UITextBorderStyleRoundedRect;
    _textfield.keyboardType=UIKeyboardTypeDefault;
    //没有内容时的提示信息
    _textfield.placeholder=@"写d野啦唔该";
    //是否作为密码输入
    _textfield.secureTextEntry=NO;
    [self.view addSubview:_textfield];
    //代理
    _textfield.delegate=self;
    
}

//点击屏幕空白出调用次函数，使虚拟键盘回收不再作为第一响应
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //self.textfield.text=@"";
    [_textfield resignFirstResponder];
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑");
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"结束编译");
}

//是否可以进行输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

//是否可以结束输入
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
