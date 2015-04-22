//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *numbers = [NSMutableString stringWithFormat:@""];
    
    if (number<otherNumber){
        while (number <= otherNumber){
            [numbers appendFormat:@"%ld", number++];
        }
    } else {
        while (otherNumber <= number){
            [numbers appendFormat:@"%ld", otherNumber++];
        }
    }
    return numbers;
}

@end
