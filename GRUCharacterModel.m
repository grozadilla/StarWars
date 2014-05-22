//
//  GRUCharacterModel.m
//  StarWars
//
//  Created by user22769 on 21/05/14.
//  Copyright (c) 2014 gru. All rights reserved.
//

#import "GRUCharacterModel.h"

@implementation GRUCharacterModel


//designado
-(id)initWithFirstName:(NSString *) aName
              lastName:(NSString *)aLastName
                 alias:(NSString *) aAlias
              wikiPage:(NSURL *) aWikiPage
                 photo:(UIImage *) aImage
             soundData:(NSData *)aSounData{
    
    if (self = [super init]) {
        _firstname = aName;
        _lastName = aLastName;
        _alias = aAlias;
        _wikiPage = aWikiPage;
        _photo = aImage;
        _soundData = aSounData;
    
    }
    return self;
    
}

-(id)initWithAlias :(NSString *) anAlias
           wikiPage:(NSURL *)aWIkiPage
              photo:(UIImage*) aPhoto
          soundData:(NSData*)aSoundData{
    
    return [self initWithFirstName:nil lastName:nil alias:anAlias wikiPage:aWIkiPage photo:aPhoto soundData:aSoundData ];

}

@end
