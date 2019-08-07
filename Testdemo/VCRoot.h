//
//  VCRoot.h
//  Testdemo
//
//  Created by Civet on 2019/8/1.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface VCRoot : UIViewController<AVAudioPlayerDelegate>
{
    UIButton *_btnPlay;
    UIButton *_btnPause;
    UIButton *_btnStop;
    UIProgressView *_musicProgress;
    UISlider *_volSlider;
    UISlider *_musicSlider;
    AVAudioPlayer *_player;
    NSTimer *_timer;
}





@end
