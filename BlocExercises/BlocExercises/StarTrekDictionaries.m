//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    id favoriteDrink = characterDictionary[@"favorite drink"];
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {

    NSMutableArray *favDrinksArray = [[NSMutableArray alloc] init]; //need an array to store what we pull from dictionary
    
    for (NSInteger idx = 0; idx < charactersArray.count; idx++) { //for each dictionary in the character array
        id favoriteDrink = charactersArray[idx][@"favorite drink"];
        [favDrinksArray addObject:favoriteDrink]; //add fav drink to our array
    }
    
    return favDrinksArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *newCharacterDictionary = [characterDictionary mutableCopy];
    [newCharacterDictionary setObject:@"Lets hope this works!" forKey:@"quote"];
    
    return newCharacterDictionary;
}

@end
