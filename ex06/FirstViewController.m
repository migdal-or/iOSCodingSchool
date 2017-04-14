//
//  ViewController.m
//  ex06
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 iOS-School-1. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController () <UITableViewDataSource>
@property (nonatomic, copy) NSArray *animals;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createModel];

//    тут какая-то херня с объявлением переменной tableView
    self.tableView = [UITableView new];
    self.tableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
    __weak typeof(self) weakSelf = self;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:5 repeats:NO block:^(NSTimer * _Nonnull timer) {
        __strong typeof(self) strongSelf = weakSelf;
        strongSelf.animals = [strongSelf getMeat];
        [strongSelf.timer invalidate];
        [strongSelf.tableView reloadData];
    }];
}
                  
- (NSArray *) getMeat {
    return @[
            @"Cat",
            @"Dog"
            ];
}
    

- (void)createModel {
    self.animals = @[
                   @"Cat",
                   @"Dog",
                   @"Pig",
                   @"Fish",
                   @"Bird"
                   ];
}

-(void)buttonClick:(UIButton *) button {
    SecondViewController *vc = [SecondViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.view.backgroundColor = UIColor.redColor;
        self.navigationItem.title = @"Title";
        self.tabBarItem.title = @"1";
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
//        self.navigationItem.title = @"Первый экран";
    }
    return self;
}

#pragma mark - UITableViewDataSource


- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    return [self.animals count];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = self.animals[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void) tableView:(UITableView *) tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath   {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = UIColor.greenColor;
    vc.navigationItem.title = [NSString stringWithFormat:@"%ld", indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
