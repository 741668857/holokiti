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
    UIImage* img=[UIImage imageNamed:@"1.jpg"];
    UIImageView* imv=[[UIImageView alloc]init];
    imv.image=img;
    imv.frame=CGRectMake(50, 100, 300, 500);
    imv.tag=101;
    [self.view addSubview:imv];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指触碰屏幕");
    UITouch* touch=[touches anyObject];
    if(touch.tapCount==1){
        NSLog(@"单次点击");
    }
    else if(touch.tapCount==2){
        NSLog(@"双次点击");
    }
    _ptlast=[touch locationInView:self.view];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch* touch=[touches anyObject];
    CGPoint pt=[touch locationInView:self.view ];
    NSLog(@"x=%f,y=%f",pt.x,pt.y);
    UIImageView* imv=[self.view viewWithTag:101];
    float xoffest=pt.x-_ptlast.x;
    float yoffest=pt.y-_ptlast.y;
    _ptlast=pt;
    imv.frame=CGRectMake(imv.frame.origin.x+xoffest, imv.frame.origin.y+yoffest, imv.frame.size.width, imv.frame.size.height);
  
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"手指离开键盘");
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
