//
//  LCUIWebViewViewController.h
//  LuochuanAD
//
//  Created by care on 17/4/24.
//  Copyright © 2017年 luochuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LCUIWebViewViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) NSString *localHtml;
@end
