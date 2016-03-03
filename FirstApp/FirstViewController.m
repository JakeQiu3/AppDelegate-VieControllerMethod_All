//
//  FirstViewController.m
//  FirstApp
//
//  Created by qsyMac on 16/3/3.
//  Copyright © 2016年 QSY. All rights reserved.
//

#import "FirstViewController.h"
#import "ViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    //   button点击
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 550, 120, 30);
    [btn setTitle:@"返回上个按钮" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(upPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    NSLog(@" 5.FirstViewController的viewDidLoad");
    // Do any additional setup after loading the view.
}
- (void)upPage {
//    ViewController *vc = [[ViewController alloc] init];
//    self.view.window.rootViewController = vc;
//    [self dismissViewControllerAnimated:YES completion:^{
    
//    }];
        [self.navigationController popViewControllerAnimated:YES];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"7.FirstViewController的viewWillAppear:(BOOL)animated");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"8.FirstViewController的viewDidAppear:(BOOL)animated");
}
// 9.是下一个视图viewdidload之后，viewwillappear之前
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"10.FirstViewController的viewWillDisappear:(BOOL)animated");
}

// 下一个视图viewdidappear之后
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"13.FirstViewController的viewDidDisappear:(BOOL)animated");
}
- (void)dealloc {
    NSLog(@"第2个视图被销毁了");
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
