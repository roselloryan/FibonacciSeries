//
//  main.m
//  FibonacciSequence


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"12";
        NSInteger lineInt = [line integerValue];
        NSMutableArray *mutArrayOfNumbers = [[NSMutableArray alloc]init];
    
        
        
        NSInteger i = 0;
        for (i = 0; i < lineInt +1; i++) {
            if (mutArrayOfNumbers.count == 0) {
                NSNumber *zeroNSN = [NSNumber numberWithInt:0];
                [mutArrayOfNumbers addObject:zeroNSN];
            }
            else if (mutArrayOfNumbers.count == 1) {
                NSNumber *oneNSN = [NSNumber numberWithInt:1];
                [mutArrayOfNumbers addObject:oneNSN];
            }
            else {
                NSInteger lastInt = [[mutArrayOfNumbers objectAtIndex:mutArrayOfNumbers.count - 1] integerValue];
                NSInteger secondToLastInt = [[mutArrayOfNumbers objectAtIndex:mutArrayOfNumbers.count - 2] integerValue];
                
                NSInteger newInt = lastInt + secondToLastInt;
                NSNumber *newNum = [NSNumber numberWithInteger:newInt];
                [mutArrayOfNumbers addObject:newNum];
            }
        }
//        NSLog(@"mutArrayOfNumbers: %@\n\n", mutArrayOfNumbers);
        NSString *solutionString = [(NSNumber*)[mutArrayOfNumbers lastObject] stringValue];
        NSLog(@"\nsolutionString: %@\n\n", solutionString);
    }
    return 0;
}
