#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    
    NSMutableArray<NSString*>* result = [[NSMutableArray alloc] initWithArray:@[]];
    
        NSString* openSymbols = @"(<[";
        NSString* closeSymbols = @")>]";
        int count = 0;

        for (int i = 0; i < [string length]; i++){
            for(int j = 0; j < [openSymbols length]; j++){
                unichar openCharacter = [openSymbols characterAtIndex: j];
                if ([string characterAtIndex: i] == openCharacter) {
                    for (int k = i + 1; k < [string length]; k++) {
                        unichar substringCharacter = [string characterAtIndex: k];
                        unichar closeCharacter = [closeSymbols characterAtIndex: j];
                        if (substringCharacter == openCharacter) {
                            count++;
                            continue;
                        }
                        if (substringCharacter == closeCharacter && count != 0) {
                            count--;
                            continue;
                        }
                        if (substringCharacter == closeCharacter && count == 0) {
                            [result addObject:[string substringWithRange:NSMakeRange(i + 1, k - i - 1)]];
                            break;
                        }
                    }
                }
            }
        }

        return result;
}

@end
