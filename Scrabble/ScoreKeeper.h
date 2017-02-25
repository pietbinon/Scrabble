//
//  ScoreKeeper.h
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger count;

- (NSInteger) arrayCount: (NSMutableArray *) a;

@end
