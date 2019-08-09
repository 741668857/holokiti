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
    [self startGame];
    [self createMusic];
    [self createmp3];
}

-(void)startGame{
    for(int i=0;i<6;i++){
        for(int j=0;j<7;j++){
            UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:2];
            btn.frame=CGRectMake(20+50*j, 100+50*i, 50, 50);
            [UIView commitAnimations];
            
            int random=arc4random()%7+1;
            NSString* strimage=[NSString stringWithFormat:@"%d.jpg",random];
            UIImage *image=[UIImage imageNamed:strimage];
            [btn setImage:image forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
            btn.tag=random;
            [self.view addSubview:btn];
        }
    }
}

-(void)pressBtn:(UIButton*)btn{
    static UIButton* btnFirst=nil;
    if(btnFirst==nil){
        btnFirst=btn;
        btnFirst.enabled=NO;
    }
    else{
        if(btnFirst.tag==btn.tag){
            btnFirst.hidden=YES;
            btn.hidden=YES;
            btnFirst=nil;
        }
        else{
            btnFirst.enabled=YES;
            btnFirst=nil;
        }
    }
}

-(void)createmp3{
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame=CGRectMake(150, 450, 100, 100);
    [btn1 setTitle:@"简直弟弟" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressMusic) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UISlider * slider=[[UISlider alloc]init];
    slider.frame=CGRectMake(10, 500, 400, 100);
    slider.minimumValue=0;
    slider.maximumValue=100;
    [slider addTarget:self action:@selector(SliderMusic:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
    
}

-(void)createMusic{
    NSString* str=[[NSBundle mainBundle]pathForResource:@"2" ofType:@"mp3"];
    NSURL *urlmusic=[NSURL fileURLWithPath:str];
    _player=[[AVAudioPlayer alloc]initWithContentsOfURL:urlmusic error:nil];
    [_player prepareToPlay];
    _player.numberOfLoops=-1;
}

-(void)pressMusic{
    [_player play];
}

-(void)SliderMusic:(UISlider*)slider{
    _player.currentTime=slider.value;
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
