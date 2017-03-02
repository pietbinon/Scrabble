//
//  main.m
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputLog.h"
#import "ScrabbleLogic.h"
#import "ScoreKeeper.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {

//====================================================================================
//            //With instance method...
//            InputLog *inputLog = [InputLog new];
//            NSString *inputString = [inputLog input];
            
            //With class method
            NSString *inputString = [InputLog input];
//=====================================================================================
            
            ScrabbleLogic *scrabbleLogic = [ScrabbleLogic new];
            NSMutableArray *tempArray = [scrabbleLogic scrabbleCount: inputString];
            
            
            ScoreKeeper *scoreKeeper = [ScoreKeeper new];
            NSInteger count = [scoreKeeper arrayCount: tempArray];
            
            
            NSLog (@"You word is worth %ld points", (long)count);
        }
    }
    return 0;
}
