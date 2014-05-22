//
//  GRUCharacterViewController.h
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GRUCharacterModel.h"

@interface GRUCharacterViewController : UIViewController


@property (weak,nonatomic)IBOutlet UIImageView * imageView;

-(id)initWithModel:(GRUCharacterModel *) aModel;
-(IBAction)playSound:(id)sender;
-(IBAction)displayWiki:(id)sender;
@end
