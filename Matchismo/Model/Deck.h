//
//  Deck.h
//  Matchismo
//
//  Created by Can on 30.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

- (Card *)drawRandomCard;
@end
