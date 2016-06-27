//
//  noController.m
//  prom
//
//  Created by James Raubenheimer on 5/23/16.
//  Copyright © 2016 jamesraub. All rights reserved.
//

#import "noController.h"

@interface noController ()

@end

@implementation noController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"200" ofType:@"gif"];
    NSData *gif = [NSData dataWithContentsOfFile:filePath];
    
    UIWebView *webViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [webViewBG loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    webViewBG.userInteractionEnabled = NO;
    webViewBG.scalesPageToFit = YES;
    webViewBG.frame=self.view.bounds;
 
    [self.view addSubview:webViewBG];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
