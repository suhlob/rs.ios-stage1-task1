#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *myArray = [NSMutableArray arrayWithArray:(sadArray)];

    for (NSInteger i = 0; i < myArray.count; i++) {
        NSLog(@"startxx");

        if (i == myArray.count - 1) {
            break;
        }
        
        if (i > 0) {
            NSInteger currentIndexValue = [[myArray objectAtIndex:(i)] integerValue];
            NSInteger previousIndexValue = [[myArray objectAtIndex:(i - 1)] integerValue];
            NSInteger nextIndexValue = [[myArray objectAtIndex:(i + 1)] integerValue];

            if (currentIndexValue > (previousIndexValue + nextIndexValue)) {
                [myArray removeObjectAtIndex:(i)];
            }
        }
    }

    NSLog(@"my array %@", myArray);
    return myArray;
}

@end
