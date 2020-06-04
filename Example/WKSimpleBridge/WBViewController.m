//
//  WBViewController.m
//  WKSimpleBridge
//
//  Created by 359079097@qq.com on 05/18/2020.
//  Copyright (c) 2020 359079097@qq.com. All rights reserved.
//

#import "WBViewController.h"
#import <WKWebViewJavascriptBridge.h>

@interface WBViewController ()

@property (nonatomic, strong) WKWebViewJavascriptBridge  *bridge;

@end

@implementation WBViewController

{
    NSString *test;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    test = @"aaaa";
    _bridge = [WKWebViewJavascriptBridge bridgeForWebView:[[WKWebView alloc] init]];
    [_bridge setWebViewDelegate:self];
    
    [_bridge registerHandler:@"123" handler:^(id data, WVJBResponseCallback responseCallback) {
        
    }];
    [_bridge registerHandler:@"444" handler:^(id data, WVJBResponseCallback responseCallback) {
        
    }];
    NSLog(@"%@", test);
    if ([_bridge isContainsHandler:@"444"] == YES) {
        NSLog(@"yes");
    }
    if ([_bridge isContainsHandler:@"56464"] == NO) {
        NSLog(@"no");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
