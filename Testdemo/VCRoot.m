//
//  VCRoot.m
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageView.h"




@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"照片墙";
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent=NO;
    
    UIScrollView* sv=[[UIScrollView alloc]init];
    sv.frame=CGRectMake(50, 10,300,480);
    sv.contentSize=CGSizeMake(300,480*1.5);
    sv.userInteractionEnabled=YES;
    sv.showsVerticalScrollIndicator=NO;
    
    for(int i=0;i<7;i++){
    NSString* strname=[NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage* img=[UIImage imageNamed:strname];
        UIImageView* imgview=[[UIImageView alloc]initWithImage:img];
        imgview.frame=CGRectMake((i%3)*100+10, (i/3)*140+6, 90, 130);
        [sv addSubview:imgview];
        imgview.userInteractionEnabled=YES;
        imgview.tag=102+i;
        
        UITapGestureRecognizer* tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pressTap:)];
        tap.numberOfTapsRequired=1;
        tap.numberOfTouchesRequired=1;
        [imgview addGestureRecognizer:tap];
        
    }
    
    [self.view addSubview:sv];
    
    // Do any additional setup after loading the view.
}

-(void)pressTap:(UITapGestureRecognizer*) tap{
    UIImageView* imagev=(UIImageView*)tap.view;
    VCImageView* imageshow=[[VCImageView alloc]init];
    imageshow.image=imagev.image;
    [self.navigationController pushViewController:imageshow animated:YES];
    
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
