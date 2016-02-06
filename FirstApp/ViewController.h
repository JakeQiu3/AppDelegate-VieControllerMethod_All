//
//  ViewController.h
//  FirstApp
//
//  Created by 邱少依 on 15/12/23.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//@property (nonatomic, weak) IBOutlet UITextField *loginF;
//
//@property (nonatomic, weak) IBOutlet UITextField *passwordF;
//
//- (IBAction)loginBtn:(UIButton *)button;
//纯代码版
@property (nonatomic, weak) UIImageView *logoImageView;

@property (nonatomic, weak) UITextField *loginF;

@property (nonatomic, weak) UITextField *passwordF;

@property (nonatomic, weak) UIButton *loginBtn;

- (void)loginBtn:(UIButton *)button;

@end

