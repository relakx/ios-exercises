//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;
    

    if(dollars<5){ //Mary has less than $5 or a negative int
        itemToReturn = @"get out of my store";
    }else if (dollars ==5) { //Mary has $5
        itemToReturn = @"have some gum";
    }else if (dollars >5 && dollars < 1000) { //Mary has $5 to under 1 thousand
        itemToReturn = @"have an apple";
    }else if (dollars >= 1000 && dollars <1000000000) {
        itemToReturn = @"have an Apple computer"; //Mary has $1000 to under 1 billion
    } else {
        itemToReturn = @"have The Big Apple"; //Mary has $1 billion or more
    }

    /* Note: Ask Ricky about use of switch vs if/else in this scenario */
    
    NSLog(@"For $%ld, Mary can %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {

    NSUInteger cost = 24;
    
//    if (self.getsDiscount) {
//        cost *= .75;
//    }
    cost = (self.getsDiscount) ? cost *= .75 : cost;
    //had no idea what needed to be done, so i turned statement into ternary for practice
    
    return cost;
}

@end
