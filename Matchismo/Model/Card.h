//
//  Card.h
//  Matchismo
//
//  Created by Winlentia on 26.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic , getter=isChosen) BOOL chosen;
@property (nonatomic , getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
