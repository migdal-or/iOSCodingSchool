//
//  Second1ViewController.m
//  ex06
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "Second1ViewController.h"

@interface Second1ViewController ()

@end

@implementation Second1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btnPush = [UIButton new];
    UIButton *btnPop = [UIButton new];
    
//    [btnPush setTitle:@"переход" forState:UIControlStateNormal];
//    [btnPush sizeToFit];
//    btnPush.center = self.view.center;
//    btnPush.backgroundColor = UIColor.purpleColor;
//    [btnPush setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
//    [btnPush setTitleColor:UIColor.yellowColor forState:UIControlStateNormal];
//    [btnPush addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btnPush];

    [btnPop setTitle:@"возврат" forState:UIControlStateNormal];
    [btnPop sizeToFit];
    btnPop.center = self.view.center;
//    btnPop.center.x+=45;
    btnPop.backgroundColor = UIColor.purpleColor;
    [btnPop setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
    [btnPop setTitleColor:UIColor.yellowColor forState:UIControlStateNormal];
    [btnPop addTarget:self action:@selector(buttonPopClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPop];

//    UINavigationController *navigationController = [UINavigationController new];
    
}

-(void)buttonClick:(UIButton *) button {
    Second1ViewController *vc = [Second1ViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)buttonPopClick:(UIButton *) button {
//    SecondViewController *vc = [Second1ViewController new];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.tabBarItem.title = @"2";
        self.view.backgroundColor = UIColor.orangeColor;
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
        //        self.navigationItem.title = @"Второй экран";
    }
    return self;
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
