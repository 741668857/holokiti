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
    self.navigationItem.title=@"你好骚啊";
    
    UIBarButtonItem* leftbtn=[[UIBarButtonItem alloc]initWithTitle:@"溜了溜了" style:UIBarButtonItemStyleDone target:self action:@selector(leftButton)];
    self.navigationItem.leftBarButtonItem=leftbtn;
    
    UIBarButtonItem* rightbtn=[[UIBarButtonItem alloc]initWithTitle:@"来呀快活呀" style:UIBarStyleDefault target:self action:@selector(rightButton)];
    
    UILabel* label=[[UILabel alloc]init];
    label.text=@"我不想跑";
    label.backgroundColor=[UIColor orangeColor];
    label.textAlignment=NSTextAlignmentCenter;
    
    UIBarButtonItem* labelbtn=[[UIBarButtonItem alloc]initWithCustomView:label];
    NSArray* arybtn=[NSArray arrayWithObjects:rightbtn,labelbtn, nil];
    
    self.navigationItem.rightBarButtonItems=arybtn;
    
    
    
    
    // Do any additional setup after loading the view.
}

-(void)leftButton{
    NSLog(@"别让我逮到你了");
    UIAlertView* alv=[[UIAlertView alloc]initWithTitle:@"你好大的胆子" message:@"想溜？对不起，我是警察" delegate:nil cancelButtonTitle:@"求放过爸爸QAQ" otherButtonTitles:@"我选择死亡。。。",@"awsl.w.", nil];
    [alv show];
}
-(void)rightButton{
    VCSecond* vc=[[VCSecond alloc]init];
    [self.navigationController pushViewController:vc animated:YES];

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
