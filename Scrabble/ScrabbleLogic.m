//
//  ScrabbleLogic.m
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ScrabbleLogic.h"



@implementation ScrabbleLogic

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dictionary = @{@"a":@(1),
                        @"e":@(1),
                        @"i":@(1),
                        @"o":@(1),
                        @"u":@(1),
                        @"l":@(1),
                        @"n":@(1),
                        @"r":@(1),
                        @"s":@(1),
                        @"t":@(1),
                        @"d":@(2),
                        @"g":@(2),
                        @"b":@(3),
                        @"c":@(3),
                        @"m":@(3),
                        @"p":@(3),
                        @"f":@(4),
                        @"h":@(4),
                        @"v":@(4),
                        @"w":@(4),
                        @"y":@(4),
                        @"k":@(5),
                        @"j":@(8),
                        @"x":@(8),
                        @"q":@(10),
                        @"z":@(10)};
        
        _array = [NSMutableArray new];
    }
    return self;
}


- (NSMutableArray *) scrabbleCount: (NSString *) str {
    NSUInteger stringCount = [str length];
    
    for (NSInteger i = 0; i < stringCount; i++) {
        
        NSString *inputS = [str substringWithRange:NSMakeRange(i, 1)];

        //        NSInteger tempInt = [[self.dictionary objectForKey: inputS] integerValue];
        //        NSNumber *tempNumber = @(tempInt);
        NSLog(@"letter: %@", inputS);
        if ([self.dictionary objectForKey: inputS]){
            NSLog(@"Points: %@", self.dictionary[inputS]);
            //            [self.array addObject: tempNumber];
            
            [self.array addObject: [self.dictionary objectForKey: inputS]];
        }
    }
    return self.array;
}

@end
