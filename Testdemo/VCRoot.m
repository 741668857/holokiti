//
//  VCRoot.m
//  Testdemo
//
//  Created by Civet on 2019/7/31.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    _PasswordLabel.secureTextEntry=YES;
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)PressLogin:(UIButton *)sender {
    NSString* user=@"abcd";
    NSString* password=@"123";
    if([_UserLabel.text isEqual:user]&&[_PasswordLabel.text isEqual:password]){
        UIAlertView* alv=[[UIAlertView alloc]initWithTitle:@"提示" message:@"恭喜崽种！" delegate:nil cancelButtonTitle:@"好的爸爸-。-" otherButtonTitles:@"我好聪明哦owo", nil];
        [alv show];
    }
    else{
        UIAlertView* alv1=[[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名或者密码错了崽种" delegate:nil cancelButtonTitle:@"我知道错了爸爸-。-" otherButtonTitles:@"这都记不住真笨哦owo", nil];
        [alv1 show];
    }
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_UserLabel resignFirstResponder];
    [_PasswordLabel resignFirstResponder];
}
@end
