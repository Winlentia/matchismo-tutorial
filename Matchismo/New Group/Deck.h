//
//  Deck.h
//  Matchismo
//
//  Created by Winlentia on 26.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
@property (strong , nonatomic) NSMutableArray *cards;

-(void)addCard:(Card *)card atTop:(BOOL)atTop;

-(Card *)drawRandomCard;

@end
