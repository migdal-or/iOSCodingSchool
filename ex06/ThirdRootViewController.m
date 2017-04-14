//
//  ThirdViewController.m
//  ex06
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "ThirdRootViewController.h"

@interface ThirdRootViewController ()

@end

@implementation ThirdRootViewController {UIButton *btnPop; UILabel *numSheets;}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btnPush = [UIButton new];
    [btnPush setTitle:@"push" forState:UIControlStateNormal];
    btnPush.frame = CGRectMake(self.view.center.x -30, self.view.center.y, 2, 2);
    [btnPush sizeToFit];
    btnPush.backgroundColor = UIColor.purpleColor;
    [btnPush setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
    [btnPush setTitleColor:UIColor.yellowColor forState:UIControlStateNormal];
    [btnPush addTarget:self action:@selector(buttonPushClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPush];
    
    btnPop = [UIButton new];
    [btnPop setTitle:@"pop" forState:UIControlStateNormal];
    btnPop.frame = CGRectMake(self.view.center.x + 30, self.view.center.y, 2, 2);
    [btnPop sizeToFit];
    btnPop.backgroundColor = UIColor.purpleColor;
    [btnPop setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
    [btnPop setTitleColor:UIColor.yellowColor forState:UIControlStateNormal];
    [btnPop addTarget:self action:@selector(buttonPopClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPop];
//    btnPop.hidden = YES;
    
    numSheets = [UILabel new];
    numSheets.frame = CGRectMake(self.view.center.x, self.view.center.y+30, 2, 2);
    numSheets.text = [NSString stringWithFormat:@"%lu sheets",[self.navigationController.viewControllers count]];
    [numSheets sizeToFit];
    [self.view addSubview:numSheets];
}

-(void)buttonPushClick:(UIButton *) button {
    ThirdRootViewController *vc = [ThirdRootViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    NSLog(@"now pushed %lu screens",[self.navigationController.viewControllers count]);
    btnPop.hidden = NO;
    numSheets.text = [NSString stringWithFormat:@"%lu sheets",[self.navigationController.viewControllers count]];
    [numSheets sizeToFit];
}

-(void)buttonPopClick:(UIButton *) button {
    NSLog(@"count %lu",[self.navigationController.viewControllers count]);
//    while ([self.navigationController.viewControllers count] > 1) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    numSheets.text = [NSString stringWithFormat:@"%lu sheets",[self.navigationController.viewControllers count]];
    [numSheets sizeToFit];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (instancetype)init {
    if ([self.navigationController.viewControllers count] > 1) btnPop.enabled = YES;
    self = [super init];
    if (self) {
                self.tabBarItem.title = @"3";
        self.view.backgroundColor = UIColor.greenColor;
                self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    }
    numSheets.text = [NSString stringWithFormat:@"%lu sheets",[self.navigationController.viewControllers count]];
    [numSheets sizeToFit];
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
