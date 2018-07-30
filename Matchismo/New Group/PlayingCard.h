//
//  PlayingCard.h
//  Matchismo
//
//  Created by Can on 30.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

+ (NSArray *)rankStrings;
+ (NSUInteger) maxRank;

@end
