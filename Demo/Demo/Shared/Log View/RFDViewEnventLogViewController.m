//
//  RFDViewEnventLogViewController.m
//  RFDemo
//
//  Created by BB9z on 5/19/15.
//  Copyright (c) 2015 RFUI. All rights reserved.
//

#import "RFDViewEnventLogViewController.h"
#import "dout.h"

@interface RFDViewEnventLogViewController ()

@end

@implementation RFDViewEnventLogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dout_debug(@"%@ > View Did Load", self.logIdentifier);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    dout_debug(@"%@ > View Will Appear", self.logIdentifier);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    dout_debug(@"%@ > View Did Appear", self.logIdentifier);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    dout_debug(@"%@ > View Will Disappear", self.logIdentifier);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    dout_debug(@"%@ > View Did Disappear", self.logIdentifier);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    dout_debug(@"%@ > Did Receive Memory Warning", self.logIdentifier);
}

- (NSString *)logIdentifier {
    return [NSString stringWithFormat:@"%p(%@)", self, self.title?: @"No title"];
}

@end
