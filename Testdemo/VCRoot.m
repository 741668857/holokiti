//
//  VCRoot.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"





@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"弟弟行为";
    _imageview=[[UIImageView alloc]init];
    _imageview.frame=self.view.bounds;
    _imageview.image=[UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:_imageview];
    
    UIBarButtonItem * btn=[[UIBarButtonItem alloc]initWithTitle:@"汝敢按我？" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem=btn;
    
}

-(void)pressNext{
    
    VCSecond * vcsec=[[VCSecond alloc]init];
    [self.navigationController pushViewController:vcsec animated:YES];
    CATransition *amin=[CATransition animation];
    amin.duration=2;
    amin.type=@"pageCurl";
    amin.subtype=kCATransitionFromRight;
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
