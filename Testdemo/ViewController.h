//
//  ViewController.h
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>{

    UIImageView* imgview;
    UIPinchGestureRecognizer* _pinGes;
    UIRotationGestureRecognizer* _roGes;
}



@end

