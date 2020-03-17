#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    int totalBill = 0;
    int annasBill = 0;
    
    for (int i = 0; i < [bill count]; i++) {
        if (i != index) {
            totalBill += [[bill objectAtIndex: i] intValue];
        }
    }
    
    annasBill = [sum intValue] - (totalBill / 2);
    NSLog(@"annasBill %d", annasBill);
    
    return annasBill == 0 ? @"Bon Appetit" : [NSString stringWithFormat:@"%d", annasBill];
}

@end
