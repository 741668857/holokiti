//
//  VCRoot.h
//  Testdemo
//
//  Created by Civet on 2019/7/31.
//  Copyright © 2019 Civet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *Username;
@property (weak, nonatomic) IBOutlet UILabel *Password;
@property (weak, nonatomic) IBOutlet UITextField *UserLabel;
@property (weak, nonatomic) IBOutlet UITextField *PasswordLabel;
@property (weak, nonatomic) IBOutlet UIButton *LoginButton;
@property (weak, nonatomic) IBOutlet UIButton *RegisterButton;
- (IBAction)PressLogin:(UIButton *)sender;


@end
