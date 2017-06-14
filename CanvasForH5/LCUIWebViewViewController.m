//
//  LCUIWebViewViewController.m
//  LuochuanAD
//
//  Created by care on 17/4/24.
//  Copyright © 2017年 luochuan. All rights reserved.
//

#import "LCUIWebViewViewController.h"

@interface LCUIWebViewViewController ()

@end

@implementation LCUIWebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self uploadLocalHtml:self.localHtml];
}
- (void)uploadLocalHtml:(NSString *)htmlStr{
    NSURL *url=[[NSBundle mainBundle]URLForResource:htmlStr withExtension:nil];
    
    NSString *html=[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSURL *baseUrl=[NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    self.webView.scalesPageToFit=YES;
    [self.webView loadHTMLString:html baseURL:baseUrl];
    


}


@end
