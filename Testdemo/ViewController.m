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
    _lbusername=[[UILabel alloc]init];
    _lbusername.text=@"用户名";
    _lbusername.frame=CGRectMake(20, 60, 100, 20);
    _lbusername.font=[UIFont systemFontOfSize:20];
    
    _lbpassword=[[UILabel alloc]init];
    _lbpassword.text=@"密码";
    _lbpassword.frame=CGRectMake(20, 130,100, 20);
    _lbpassword.font=[UIFont systemFontOfSize:20];
    
    _tfusername=[[UITextField alloc]init];
    _tfusername.frame=CGRectMake(100, 50, 300, 50);
    _tfusername.placeholder=@"填上你的用户名，弟弟！";
    _tfusername.borderStyle=UITextBorderStyleRoundedRect;
    
    _tfpassword=[[UITextField alloc]init];
    _tfpassword.frame=CGRectMake(100, 120, 300, 50);
    _tfpassword.placeholder=@"赶紧输入密码，崽种！";
    _tfpassword.secureTextEntry=YES;
    _tfpassword.borderStyle=UITextBorderStyleRoundedRect;
    
     _btlogin=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btlogin setTitle:@"登陆" forState:UIControlStateNormal];
    _btlogin.titleLabel.font=[UIFont systemFontOfSize:20 ];
    _btlogin.frame=CGRectMake(150, 200, 100, 50);
    [_btlogin addTarget:self action:@selector(presslogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btregister=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btregister setTitle:@"注册" forState:UIControlStateNormal];
    _btregister.titleLabel.font=[UIFont systemFontOfSize:20];
    _btregister.frame=CGRectMake(150, 250, 100, 50);
    [_btregister addTarget:self action:@selector(pressregister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbpassword];
    [self.view addSubview:_lbusername];
    [self.view addSubview:_tfpassword];
    [self.view addSubview:_tfusername];
    [self.view addSubview:_btlogin];
    [self.view addSubview:_btregister];

}

-(void)presslogin{
    
    NSString* strname=@"abc";
    NSString* strpass=@"123";
    NSString* strusername=_tfusername.text;
    NSString* strpassword=_tfpassword.text;
    if([strname isEqualToString:strusername]&&[strpass isEqualToString:strpassword]){
     UIAlertView*  alt=[[UIAlertView alloc]initWithTitle:@"提示" message:@"登陆成功了呢-.-" delegate:nil cancelButtonTitle:@"知道了爸爸^_ ^" otherButtonTitles:nil, nil];
        [alt show];
    }
    else{
       UIAlertView* alt=[[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名或密码不正确啊，崽种！" delegate:nil cancelButtonTitle:@"知道了爸爸^_ ^" otherButtonTitles:nil, nil];
        [alt show];
    }
    
    
}

-(void)pressregister{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_tfpassword resignFirstResponder];
    [_tfusername resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
