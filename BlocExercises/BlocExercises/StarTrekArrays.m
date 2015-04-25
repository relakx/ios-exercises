//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *starTrekCharacters = [characterString componentsSeparatedByString:@";"];
    
    return starTrekCharacters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *starTrekCharacters = [characterArray componentsJoinedByString:@";"];
    
    return starTrekCharacters;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSMutableArray *myCharacterArray = [characterArray mutableCopy]; //make mutable copy
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)]; 
    [myCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    return myCharacterArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    // Note: More Effecient way to do this?
    NSMutableArray *worfPresent = [characterArray mutableCopy];
    NSPredicate *containWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [worfPresent filterUsingPredicate:containWorf];
    if (worfPresent.count > 0) { // see if anything is in the filtered array
        return YES;
    } else {
        return NO;
    }
    
}

@end
