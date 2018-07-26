//
//  Card.m
//  Matchismo
//
//  Created by Winlentia on 26.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score = 1 ;
        }
    }
    return score;
}

@end
