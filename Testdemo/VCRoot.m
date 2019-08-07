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
    for(int i=0;i<3;i++){
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame=CGRectMake(100, 100+80*i, 200, 20);
        btn.tag=101+i;
        if(btn.tag==101){
            [btn setTitle:@"燃起来吧休年OWO" forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(pressPlay) forControlEvents:UIControlEventTouchUpInside];
        }
        if(btn.tag==102){
            [btn setTitle:@"暂停？那可太可惜了吧^_^" forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(pressPause) forControlEvents:UIControlEventTouchUpInside];
        }
        if(btn.tag==103){
            [btn setTitle:@"停止？停止你的行为休年QAQ" forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
        }
        [self.view addSubview:btn];
        
    }
    
    _musicProgress=[[UIProgressView alloc]init];
    _musicProgress.frame=CGRectMake(0, 350, 400, 30);
    [self.view addSubview:_musicProgress];
    
    _volSlider=[[UISlider alloc]init];
    _volSlider.frame=CGRectMake(0, 420, 400, 30);
    _volSlider.maximumValue=100;
    _volSlider.minimumValue=0;
    _volSlider.value=50;
    [_volSlider addTarget:self action:@selector(volChange) forControlEvents:UIControlEventValueChanged];
    
    _musicSlider=[[UISlider alloc]init];
    _musicSlider.frame=CGRectMake(0, 470, 400, 30);
    _musicSlider.minimumValue=0;
    _musicSlider.maximumValue=400;
    [_musicSlider addTarget:self action:@selector(musicChange) forControlEvents:UIControlEventValueChanged];
    
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    [self.view addSubview:_volSlider];
    [self.view addSubview:_musicSlider];
    
    [self createAVPlayer];
    
}

-(void)pressPlay{
    NSLog(@"正在播放音乐呢休年-。-");
    [_player play];
}

-(void)pressPause{
    NSLog(@"暂停播放了🐻del");
    [_player pause];
}

-(void)pressStop{
    NSLog(@"你竟然停止播放！");
    [_player stop];
    _player.currentTime=0;
}

-(void)volChange{
    NSLog(@"%f",_volSlider.value);
    _player.volume=_volSlider.value/100;
}

-(void)updateTime{
    _musicProgress.progress=_player.currentTime/_player.duration;
}

-(void)musicChange{
    _player.currentTime=_musicSlider.value;
}



-(void)createAVPlayer{
    NSString* str=[[NSBundle mainBundle]pathForResource:@"2" ofType:@"mp3"];
    NSURL* urlmusic=[NSURL fileURLWithPath:str];
    _player=[[AVAudioPlayer alloc]initWithContentsOfURL:urlmusic error:nil];
    
    [_player prepareToPlay];
    _player.numberOfLoops=-1;
    _player.volume=0.5;
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    [_timer invalidate];
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
