//
//  CTPViewController.m
//  CountingTestProject
//
//  Created by Tim Gostony on 2/8/13.
//  Copyright (c) 2013 Tim Gostony. All rights reserved.
//

#import "CTPViewController.h"


@interface CTPViewController ()

@end

@implementation CTPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // make one that counts up
    UICountingLabel* myLabel = [[UICountingLabel alloc] initWithFrame:CGRectMake(10, 10, 200, 40)];
    myLabel.method = UILabelCountingMethodLinear;
    myLabel.format = @"%d";
    [self.view addSubview:myLabel];
    [myLabel countFrom:1 to:10 withDuration:3.0];
    [myLabel release];
    
    // make one that counts up from 5% to 10%, using ease in out (the default)
    UICountingLabel* countPercentageLabel = [[UICountingLabel alloc] initWithFrame:CGRectMake(10, 50, 200, 40)];
    [self.view addSubview:countPercentageLabel];
    countPercentageLabel.format = @"%.1f%%";
    [countPercentageLabel countFrom:5 to:10];
    [countPercentageLabel release];
    
    
    
    // count up using a string in the formatter with apdded zeroes
    UICountingLabel* scoreLabel = [[UICountingLabel alloc] initWithFrame:CGRectMake(10, 90, 200, 40)];
    [self.view addSubview:scoreLabel];
    scoreLabel.format = @"Score: %05d";
    scoreLabel.method = UILabelCountingMethodEaseOut;
    [scoreLabel countFrom:0 to:100 withDuration:2.5];
    [scoreLabel release];
    
    
    
    // example using a NIB-placed label and skipping arguments (defaults: method: easeinout, time: 2.0)
    [self.label countFrom:0 to:1000];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_label release];
    [super dealloc];
}
@end
