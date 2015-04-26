//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *bigNumber = @([number intValue]*2);

    return bigNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberArray = [NSMutableArray new]; //create array to drop numbers from range into
    NSInteger lowNum = number;
    NSInteger highNum = otherNumber;
    
    if (number > otherNumber){ //check to see if the 1st number was higher
        lowNum = otherNumber;
        highNum = number;
    }
    
    for (NSInteger i = lowNum;i<=highNum;i++){
        NSNumber *myNum = [NSNumber numberWithInteger:i]; 
        [numberArray addObject:myNum]; //add the integer
    }
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *lowestNumberArray = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *sortNumbers = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [lowestNumberArray sortUsingDescriptors:@[sortNumbers]];
    
    return [lowestNumberArray[0] longValue];
}

@end
