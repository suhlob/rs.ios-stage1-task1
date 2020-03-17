#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSNumber *minimumArrayValue = [array valueForKeyPath:@"@min.self"];
    NSNumber *maximumArrayValue = [array valueForKeyPath:@"@max.self"];
    NSNumber *sumOfArrayElements = [array valueForKeyPath: @"@sum.self"];
    
    NSNumber *minimumArraySum = [NSNumber numberWithInt:([sumOfArrayElements intValue] - [maximumArrayValue intValue])];
    NSNumber *maximumArraySum = [NSNumber numberWithInt:([sumOfArrayElements intValue] - [minimumArrayValue intValue])];
    NSArray *myArray = [NSArray arrayWithObjects:minimumArraySum, maximumArraySum, nil];

    return myArray;
}

@end
