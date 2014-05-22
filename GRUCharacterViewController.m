//
//  GRUCharacterViewController.m
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import "GRUCharacterViewController.h"
#import "GRUWikiController.h"
#import "CafPlayer.h"

@interface GRUCharacterViewController (){
    GRUCharacterModel *model;
}
@end

@implementation GRUCharacterViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}


- (id)initWithModel:(GRUCharacterModel *) aModel{
    if (self = [super initWithNibName:nil bundle:nil]) {
        model = aModel;
        self.title = aModel.alias;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    //sincroniza mmodelo con imageview
    
    self.imageView.image = model.photo;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sonido
-(IBAction)playSound:(id)sender{
    CafPlayer *player = [CafPlayer cafPlayer];
    [player playSoundData:model.soundData];
}

-(IBAction)displayWiki:(id)sender{
    GRUWikiController *wikiCOntroller = [[GRUWikiController alloc]initWithModel:model];
    [self.navigationController pushViewController:wikiCOntroller animated:YES];
}

@end
