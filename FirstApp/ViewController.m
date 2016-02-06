//
//  ViewController.m
//  FirstApp
//
//  Created by 邱少依 on 15/12/23.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加图片
    CGRect logoRect=CGRectMake(100, 50, 100, 200);
    UIImageView *logoImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LoginBackground.png"]];//设置图片
    logoImageView.contentMode=UIViewContentModeScaleAspectFit;//设置内容填充模式
    logoImageView.frame=logoRect;//设置控件大小和位置（相对于父控件的位置）
    [self.view addSubview:logoImageView];//添加到KCMainViewController的View中
    _logoImageView = logoImageView;
    
    //添加手机号码输入框
    CGRect phoneNumberRect=CGRectMake(20, 320, 280, 30);
    UITextField *loginF=[[UITextField alloc]initWithFrame:phoneNumberRect];
    loginF.borderStyle=UITextBorderStyleRoundedRect;//设置文本框的边框样式
    [self.view addSubview:loginF];
    _loginF = loginF;
    
    //添加密码输入框
    CGRect passwordRect=CGRectMake(20, 380, 280, 30);
    UITextField *passwordF=[[UITextField alloc]initWithFrame:passwordRect];
    passwordF.borderStyle=UITextBorderStyleRoundedRect;
    [self.view addSubview:passwordF];
    _passwordF = passwordF;
    
    //添加登录按钮
    CGRect loginButtonRect=CGRectMake(10, 440, 300, 25);
   UIButton *loginBtn=[[UIButton alloc]initWithFrame:loginButtonRect];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];//设置标题内容颜色
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];//设置按钮标题
    [loginBtn addTarget:self action:@selector(loginBtn:) forControlEvents:UIControlEventTouchUpInside];//添加点击事件
    [self.view addSubview:loginBtn];
    _loginBtn = loginBtn;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loginBtn:(UIButton *)button {
    if ([_loginF.text isEqualToString:@"123"] && [_passwordF.text isEqualToString:@"456"]) {
        NSLog(@"登录成功");
    }
}
@end
