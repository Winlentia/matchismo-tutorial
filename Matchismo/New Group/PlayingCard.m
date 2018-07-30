//
//  PlayingCard.m
//  Matchismo
//
//  Created by Can on 30.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
    NSArray *rankString = [PlayingCard rankStrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;
@synthesize rank = _rank;

+ (NSArray *)validSuits {
    return @[@"♥︎",@"♠︎", @"♣︎", @"♦︎"];
}

+ (NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

-(void) setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}


- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSUInteger)maxRank { return [[self rankStrings] count] -1; }

-(void)setRank:(NSUInteger)rank {
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}
@end
