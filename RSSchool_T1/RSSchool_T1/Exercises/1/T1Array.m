#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {

    if (sadArray.count < 3) {
        return sadArray;
    }

    NSUInteger currentIndex = 1;
    NSMutableArray<NSNumber *> *happyArray = [sadArray mutableCopy];
    while (currentIndex < happyArray.count - 1) {
        NSInteger nearestElementsSum =
            happyArray[currentIndex - 1].integerValue
            + happyArray[currentIndex + 1].integerValue;

        if (happyArray[currentIndex].integerValue > nearestElementsSum) {
            [happyArray removeObjectAtIndex:currentIndex];
            currentIndex = 1;
        } else {
            currentIndex++;
        }
    }

    return [happyArray copy];
}

@end
