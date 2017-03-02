//
//  ScoreKeeper.m
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ScoreKeeper.h"



@implementation ScoreKeeper

- (NSInteger) arrayCount: (NSMutableArray *) a {
    
    for (NSNumber *number in a) {
        self.count += [number integerValue];
        NSLog(@"score %ld", (long)self.count);
    }
    return self.count;
}

@end
