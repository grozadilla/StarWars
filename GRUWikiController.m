//
//  GRUWikiController.m
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import "GRUWikiController.h"

@interface GRUWikiController ()

@end

@implementation GRUWikiController

- (id)initWithModel:(GRUCharacterModel *)model
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
        self.theModel = model;
        self.title = @"Wiki";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.webView.delegate=self;
    //sincronizar el modelo con la wiki
    [self.webView loadRequest:[NSURLRequest requestWithURL:self.theModel.wikiPage]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebViewDelegate methods

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.actView stopAnimating];
    [self.actView setHidden:YES];
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    if (navigationType==UIWebViewNavigationTypeLinkClicked ||navigationType==UIWebViewNavigationTypeFormSubmitted||
        navigationType==UIWebViewNavigationTypeFormResubmitted){
        return NO;
    }
    return YES;
}

@end
