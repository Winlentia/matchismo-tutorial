//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Winlentia on 24.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"


@interface CardGameViewController ()


@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (nonatomic , strong ) Deck *deck;
@end

@implementation CardGameViewController

-(Deck *)deck{
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc] init];
}


-(void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips : %d",self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    if([[sender currentTitle] length]){
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else{
        Card * card = [self.deck drawRandomCard];
        
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:card.contents forState:UIControlStateNormal];
    }
    
    self.flipCount++ ;
    

}



@end
