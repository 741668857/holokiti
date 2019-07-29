//
//  ViewController.h
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIStepper* _stepper;
    UISegmentedControl* _seg;
}

@property(retain,nonatomic) UIStepper* stepper;
@property(retain,nonatomic)UISegmentedControl* seg;

@end

