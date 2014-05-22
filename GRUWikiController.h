//
//  GRUWikiController.h
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GRUCharacterModel.h"

@interface GRUWikiController : UIViewController<UIWebViewDelegate>

@property (weak,nonatomic) IBOutlet UIWebView * webView;
@property (weak,nonatomic) IBOutlet UIActivityIndicatorView *actView;
@property (strong,nonatomic) GRUCharacterModel * theModel;

-(id)initWithModel:(GRUCharacterModel *)model;


@end
