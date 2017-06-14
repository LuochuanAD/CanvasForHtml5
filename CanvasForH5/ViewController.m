//
//  ViewController.m
//  CanvasForH5
//
//  Created by care on 2017/6/14.
//  Copyright © 2017年 luochuan. All rights reserved.
//

#import "ViewController.h"
#import "LCUIWebViewViewController.h"
#import "RKSwipeBetweenViewControllers.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self pushToH5AndCssViewController];

}
- (void)pushToH5AndCssViewController{
    UIPageViewController *pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    RKSwipeBetweenViewControllers *navigationController = [[RKSwipeBetweenViewControllers alloc]initWithRootViewController:pageController];
    
    LCUIWebViewViewController *total=[[LCUIWebViewViewController alloc]init];
    total.localHtml=@"total.html";
    LCUIWebViewViewController *flight=[[LCUIWebViewViewController alloc]init];
    flight.localHtml=@"flight.html";
    LCUIWebViewViewController *traveller=[[LCUIWebViewViewController alloc]init];
    traveller.localHtml=@"travellerOn.html";
    LCUIWebViewViewController *place=[[LCUIWebViewViewController alloc]init];
    place.localHtml=@"placeOn.html";
    
    
    [navigationController.viewControllerArray addObjectsFromArray:@[total,flight,traveller,place]];
    
    [self presentViewController:navigationController animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
