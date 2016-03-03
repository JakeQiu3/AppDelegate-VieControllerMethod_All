//
//  ViewController.m
//  FirstApp
//
//  Created by 邱少依 on 15/12/23.
//  Copyright © 2015年 QSY. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end
//出入栈（以前者为主）区：入栈：ViewController的viewWillDisappear:(BOOL)animated -》FirstViewController的viewDidLoad 和FirstViewController的viewWillAppear:(BOOL)animated -》ViewController的viewDidDisappear:(BOOL)animated -》FirstViewController的viewDidAppear:(BOOL)animated
//出栈：FirstViewController的viewWillDisappear:(BOOL)animated -》ViewController的viewWillAppear:(BOOL)animated -》FirstViewController的viewDidDisappear:(BOOL)animated-》ViewController的viewDidAppear:(BOOL)animated.

//模态（以后者为主）入：FirstViewController的viewDidLoad-》viewWillDisappear:(BOOL)animated-》FirstViewController的viewWillAppear:(BOOL)animated-》FirstViewController的viewDidAppear:(BOOL)animated-》ViewController的viewDidDisappear:(BOOL)animated
//模态入：viewWillDisappear:(BOOL)animated-》ViewController的viewWillAppear:(BOOL)animated-》ViewController的viewDidAppear:(BOOL)animated-》FirstViewController的viewDidDisappear:(BOOL)animated

//window的rootViewController 同入栈
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"1. ViewController的viewDidLoad");
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
   
    
//   button点击
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 550, 120, 30);
    [btn setTitle:@"点击下个按钮" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)nextPage {
    FirstViewController *firstVC = [[FirstViewController alloc] init];
//    self.view.window.rootViewController = firstVC;
//    [self presentViewController:firstVC animated:YES completion:^{
//        
//    }];
    [self.navigationController pushViewController:firstVC animated:YES];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"2. ViewController的viewWillAppear:(BOOL)animated");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"4.ViewController的viewDidAppear:(BOOL)animated");
}
//晚于viewdidload 早于viewwillappear
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"6.ViewController的viewWillDisappear:(BOOL)animated");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"9.ViewController的viewDidDisappear:(BOOL)animated");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"第一个视图被销毁了");
}
- (void)loginBtn:(UIButton *)button {
    if ([_loginF.text isEqualToString:@"123"] && [_passwordF.text isEqualToString:@"456"]) {
        NSLog(@"登录成功");
    }
}
@end
