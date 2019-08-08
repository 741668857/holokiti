//
//  VCSecond.m
//  Testdemo
//
//  Created by Civet on 2019/8/8.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView=[[UIImageView alloc]init];
    _imageView.frame=self.view.bounds;
    _imageView.image=[UIImage imageNamed:@"2.jpg"];
    [self.view addSubview:_imageView];
    
    UIBarButtonItem *btn=[[UIBarButtonItem alloc]initWithTitle:@"简直弟弟" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem=btn;

}

-(void)pressBack{
    [self.navigationController popViewControllerAnimated:YES];
    CATransition *amin=[CATransition animation];
    amin.duration=2;
    amin.type=@"pageCurl";
    amin.subtype=kCATransitionFromLeft;
    [self.navigationController.view.layer addAnimation:amin forKey:nil];
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
