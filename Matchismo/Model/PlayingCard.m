//
//  PlayingCard.m
//  Matchismo
//
//  Created by Can on 30.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit]; //gets value in rankStrings from index "self.rank", appends self.suit to it.
    
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit]; // %d = int, %@ = object
}

@synthesize suit = _suit;
+ (NSArray *) validSuits //this is a class method (somewhat like a static method)s
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit
{
    //unicode suit characters: ♠ ♣ ♥ ♦
    
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}

- (NSString *)suit
{
    if (_suit == nil)
    {
        return @"?";
    }
    
    return _suit;
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count]-1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}

@end
