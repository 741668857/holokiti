//
//  VCImageView.m
//  Testdemo
//
//  Created by Civet on 2019/8/2.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCImageView.h"


@interface VCImageView ()

@end

@implementation VCImageView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"图片展示";
    _imageview=[[UIImageView alloc]init];
    _imageview.frame=CGRectMake(0, 0, 410, 700);
    _imageview.image=_image;
    [self.view addSubview:_imageview];
    
    
    
    // Do any additional setup after loading the view.
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
