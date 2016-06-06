//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()


@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        
        [self resetBoard];

    }

    return self;
}

-(void)resetBoard
{
    NSArray *row1 = @[ @"", @"", @"" ];
    NSArray *row2 = @[ @"", @"", @"" ];
    NSArray *row3 = @[ @"", @"", @"" ];
    
    NSArray *ticTacToeGameBoard = @[ [row1 mutableCopy]   ,
                                     [row2 mutableCopy]   ,
                                     [row3 mutableCopy]   ];
    
    self.board = [ticTacToeGameBoard mutableCopy];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    return self.board[column][row];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    if ([self.board [column][row] isEqualToString:@""]) {
    
        return YES;
    
    }else {
    
        return NO;
    }
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board [column][row] = @"X";

}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board [column][row] = @"O";
}

-(NSString *)winningPlayer
{
    //row 1
    if ([self.board [0][0] isEqualToString:self.board [0][1]] && [self.board [0][0] isEqualToString:self.board [0][2]]) {
        
        return self.board [0][0];
    }
    
    //column 1
    if ([self.board [0][0] isEqualToString:self.board [1][0]] && [self.board [0][0] isEqualToString:self.board [2][0]]) {
        
        return self.board [0][0];
    }
    
    //diagonal 1
    if ([self.board [0][0] isEqualToString:self.board [1][1]] && [self.board [0][0] isEqualToString:self.board [2][2]]) {
        
        return self.board [0][0];
    }
    
    //column 2
    if ([self.board [0][1] isEqualToString:self.board [1][1]] && [self.board [0][1] isEqualToString:self.board [2][1]]) {
        
        return self.board [0][1];
    }
    
    //column 3
    if ([self.board [0][2] isEqualToString:self.board [1][2]] && [self.board [0][2] isEqualToString:self.board [2][2]]) {
        
        return self.board [0][2];
    }
    
    //diagonal 2
    if ([self.board [0][2] isEqualToString:self.board [1][1]] && [self.board [0][2] isEqualToString:self.board [2][0]]) {
        
        return self.board [0][2];
    }
    
    //row 2
    if ([self.board [1][0] isEqualToString:self.board [1][1]] && [self.board [1][0] isEqualToString:self.board [1][2]]) {
        
        return self.board [1][0];
    }
    
    //row 3
    if ([self.board [2][0] isEqualToString:self.board [2][1]] && [self.board [2][0] isEqualToString:self.board [2][2]]) {
        
        return self.board [2][0];
    }

    return @"";
}

-(BOOL)isADraw
{
    BOOL boardIsFull = YES;
    
    for (NSUInteger i = 0; i < 3; i++) {
        
        for (NSUInteger j = 0; j < 3; j++) {
        
            if ([self.board [i][j] isEqualToString:@""]) {
            
                boardIsFull = NO;
            }
        }
    }
    return boardIsFull;
}

@end
