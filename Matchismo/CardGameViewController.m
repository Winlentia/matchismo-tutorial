//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Winlentia on 24.07.2018.
//  Copyright © 2018 Winlentia. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()


@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

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
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"A♣" forState:UIControlStateNormal];
    }
    
    self.flipCount++ ;
    

}



@end
