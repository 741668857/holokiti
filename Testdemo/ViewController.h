//
//  ViewController.h
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    //警告对话框对象
    UIAlertView* _alertview;
    //等待提示对象
    UIActivityIndicatorView* _indicator;
}

@property(retain,nonatomic)UIAlertView* alertview;
@property(retain,nonatomic)UIActivityIndicatorView* indicator;


@end

