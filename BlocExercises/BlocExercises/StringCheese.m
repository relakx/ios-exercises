//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *sentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName]; 
    return sentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
//    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
//    NSString *cheeseType = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
//    return cheeseType;
    
    NSMutableString *cheeseType = [cheeseName mutableCopy];
    NSRange cheeseRange = [cheeseType rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location != NSNotFound) {
    [cheeseType deleteCharactersInRange:cheeseRange];
    } else {}
    return cheeseType;
    
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *cheeseText;
    if (cheeseCount < 1) {
       cheeseText = @"No Cheese here";
    } else if (cheeseCount == 1){
       cheeseText = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    } else {
       cheeseText = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    return cheeseText;
}

@end
