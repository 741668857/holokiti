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
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(100, 100, 150, 100);
    btn.titleLabel.font=[UIFont systemFontOfSize:20];
    [btn setTitle:@"来呀，快活呀" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)pressBtn:(UIButton*)btn{
    NSString *strURL=@"http://www.baidu.com";
    NSURL *url=[NSURL URLWithString:strURL];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    _connect=[NSURLConnection connectionWithRequest:request delegate:self];
    _data=[[NSMutableData alloc]init];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"error=%@",error);
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSHTTPURLResponse *res=(NSHTTPURLResponse*)response;
    if(res.statusCode==200){
        NSLog(@"连接成功，服务器正常");
    }
    if(res.statusCode==404){
        NSLog(@"服务器正常开启，没有找到链接地址页面或数据");
    }
    if(res.statusCode==500){
        NSLog(@"服务器待机或者关机");
    }
    }

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [_data appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *str=[[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];
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
