//
//  GRUCharacterModel.h
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GRUCharacterModel : NSObject

@property (strong,nonatomic) NSString *firstname;
@property (strong,nonatomic) NSString *lastName;
@property (strong,nonatomic) NSString *alias;
@property (strong,nonatomic) NSURL *wikiPage;
@property (strong,nonatomic) UIImage *photo;

@property (strong,nonatomic) NSData *soundData;


//designado
-(id)initWithFirstName:(NSString *) aName
              lastName:(NSString *)aLastName
                 alias:(NSString *) aAlias
              wikiPage:(NSURL *) aWikiPage
                 photo:(UIImage *) aImage
             soundData:(NSData *)aSounData;
//convenencia
-(id)initWithAlias :(NSString *) anAlias
           wikiPage:(NSURL *)aWIkiPage
              photo:(UIImage*) aPhoto
          soundData:(NSData*)aSoundData;

@end
