//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
    NSUInteger count = 0;
    NSUInteger i = arc4random_uniform(3);
    NSUInteger j = arc4random_uniform(3);
    
    while (![self.game canPlayAtColumn:i row:j] && count < 9) {
        i = arc4random_uniform(3);
        j = arc4random_uniform(3);
        count++;
    }
    
    return FISTicTacToePositionMake(i, j);
}

@end
