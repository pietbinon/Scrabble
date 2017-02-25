//
//  ScrabbleLogic.h
//  Scrabble
//
//  Created by Pierre Binon on 2017-02-24.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ScrabbleLogic : NSObject

@property (nonatomic) NSDictionary *dictionary;
@property (nonatomic) NSMutableArray *array;

- (NSMutableArray *) scrabbleCount: (NSString *) str;

@end
