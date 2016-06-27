//
//  yesController.m
//  prom
//
//  Created by James Raubenheimer on 5/23/16.
//  Copyright © 2016 jamesraub. All rights reserved.
//

#import "yesController.h"

@interface yesController ()

@end

@implementation yesController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //create the frame that will contain our label
    CGRect labelFrame = CGRectMake(10.0f, 10.0f, 200.0f, 25.0f);
    //create the label
    self.myLabel = [[UILabel alloc] initWithFrame:labelFrame];
    //set the label text
    self.myLabel.text = @"Simple Label";
    //set the lable font
    self.myLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    //se the text alignment
    self.myLabel.textAlignment =  NSTextAlignmentCenter;
    //se the border color and width
    self.myLabel.layer.borderColor = [UIColor blackColor].CGColor;
    self.myLabel.layer.borderWidth = 1.0;
    //add the label to the view
    [self.view addSubview:self.myLabel];
    
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"wolf" ofType:@"gif"];
    NSData *gif = [NSData dataWithContentsOfFile:filePath];
    
    UIWebView *webViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [webViewBG loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    webViewBG.userInteractionEnabled = NO;
    
    [self.view addSubview:webViewBG];
    
    
    NSString *cfilePath = [[NSBundle mainBundle] pathForResource:@"200-k" ofType:@"gif"];
    NSData *cgif = [NSData dataWithContentsOfFile:cfilePath];
    
    UIWebView *cwebViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [cwebViewBG loadData:cgif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    cwebViewBG.userInteractionEnabled = NO;
    
   cwebViewBG.frame=CGRectMake(0, 200, self.view.frame.size.width, 200);
    [self.view addSubview:cwebViewBG];
   
    
    NSString *xfilePath = [[NSBundle mainBundle] pathForResource:@"200-1" ofType:@"gif"];
    NSData *xgif = [NSData dataWithContentsOfFile:xfilePath];
    
    UIWebView *xwebViewBG = [[UIWebView alloc] initWithFrame:self.view.frame];
    [xwebViewBG loadData:xgif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    xwebViewBG.userInteractionEnabled = NO;
    
    xwebViewBG.frame=CGRectMake(0, 400, self.view.frame.size.width, 200);
    [self.view addSubview:xwebViewBG];
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
