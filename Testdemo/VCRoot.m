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
    self.title=@"haha";
    self.view.backgroundColor=[UIColor whiteColor];
    UIPickerView* pickerview=[[UIPickerView alloc]init];
    pickerview.frame=CGRectMake(10, 100, 400,200);
    pickerview.delegate=self;
    pickerview.dataSource=self;
    [self.view addSubview:pickerview];

    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component==1){
        return 12;
    }
    if(component==2){
        return 12;
    }
    return 30;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component==0){
    NSString* str1=@"";
    str1=[NSString stringWithFormat:@"%ld年",1997+row];
    return str1 ;
    }
    
    if(component==1){
        NSString* str2=@"";
        str2=[NSString stringWithFormat:@"%ld月",1+row];
        return str2 ;
        }

    if(component==2){
            NSString* str3=@"";
            str3=[NSString stringWithFormat:@"%ld日",1+row];
            return str3 ;
    }
   
    return 0;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 50;
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
