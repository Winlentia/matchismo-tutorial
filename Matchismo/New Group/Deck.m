//
//  Deck.m
//  Matchismo
//
//  Created by Winlentia on 26.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "Deck.h"
@property (strong,nonatomic) NSMutableArray *cards;

@implementation Deck

-(NSMutableArray *)cards{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else {
        [self.cards addObject:card];
    }
    
}

-(Card *)drawRandomCard{
    Card *randomCard = nil;
    
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        
    }
    
    return randomCard;
}

@end
