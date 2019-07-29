//
//  ViewController.h
//  Testdemo
//
//  Created by Civet on 2019/7/29.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    UILabel* _lbusername;
    UILabel* _lbpassword;
    UITextField* _tfusername;
    UITextField* _tfpassword;
    UIButton* _btlogin;
    UIButton* _btregister;
 
}



@end

