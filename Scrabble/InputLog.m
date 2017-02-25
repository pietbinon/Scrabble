//
//  InputLog.m
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "InputLog.h"



@implementation InputLog

- (NSString *) input {
    
    printf("Please enter your word...\n");
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String: inputChars];
    NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return input;
}

@end
