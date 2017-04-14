//
//  SecondViewController.m
//  ex06
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "SecondViewController.h"
#import "Second1ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = UIColor.greenColor;
//    self.tabBarItem.title = @"SecondVC";

    UIButton *btn = [UIButton new];
    [btn setTitle:@"переход" forState:UIControlStateNormal];
    [btn sizeToFit];
    btn.center = self.view.center;
    btn.backgroundColor = UIColor.purpleColor;
    [btn setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
    [btn setTitleColor:UIColor.yellowColor forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
//        UINavigationController *navigationController = [UINavigationController new];
    //    navigationController.viewControllers = @[firstVC];
    //
    //    window.rootViewController = navigationController;
    
}

-(void)buttonClick:(UIButton *) button {
    Second1ViewController *vc = [Second1ViewController new];
    [self.navigationController pushViewController:vc animated:YES];

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

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"2";
        self.view.backgroundColor = UIColor.yellowColor;
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
//        self.navigationItem.title = @"Второй экран";
 }
    return self;
}

@end
