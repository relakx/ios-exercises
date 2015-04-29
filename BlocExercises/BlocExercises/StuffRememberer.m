//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
    NSLog(@"%@", self.rememberedArray);
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.copiedArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    NSMutableArray *myArray = self.rememberedArray;
    NSLog(@"%@", myArray);
    return self.rememberedArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
   
    return self.copiedArray;
}

- (CGFloat) floatYouShouldRemember { 
    
    return self.rememberedFloat;
}

@end