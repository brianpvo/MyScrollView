//
//  ViewController.m
//  MyScrollView
//
//  Created by Brian Vo on 2018-04-23.
//  Copyright © 2018 Brian Vo. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect frame = self.view.frame;
    self.myScrollView = [[MyScrollView alloc] initWithFrame:frame];
    self.myScrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.myScrollView];
    
    UIView *secondView = [[UIView alloc] initWithFrame: frame];
    [self.myScrollView addSubview:secondView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.myScrollView addSubview:redView];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.myScrollView addSubview:greenView];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.myScrollView addSubview:blueView];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.myScrollView addSubview:yellowView];
    
    self.myScrollView.contentSize = CGSizeMake(self.myScrollView.bounds.size.width,
                                               CGRectGetMaxY(yellowView.frame));
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
