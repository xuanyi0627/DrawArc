//
//  ViewController.m
//  DrawArc
//
//  Created by 宣佚 on 2019/10/22.
//  Copyright © 2019 宣佚. All rights reserved.
//

#import "ViewController.h"
#import "XXArcView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    XXArcView *v = [[XXArcView alloc] initWithFrame:CGRectMake(10, 100, 100, 100)];
    [self.view addSubview:v];
}


@end
