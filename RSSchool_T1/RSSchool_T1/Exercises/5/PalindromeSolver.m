#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    
   const char *string = [s cStringUsingEncoding:NSUTF8StringEncoding];
        int len = (int)strlen(string);
        char *ans = malloc(len + 1);
        char *chang = malloc(len);
        memset(chang, 0, len);

        NSInteger kInt = k.integerValue;

        int a = 0;
        int b = len - 1;

        while (a <= b) {
            if (a == b) {
                ans[a] = string[a];
                break;
            }
            if (string[a] == string[b]) {
                ans[a] = string[a];
                ans[b] = string[b];
            } else if (string[a] > string[b]) {
                chang[b] = 1;
                kInt -= 1;
                ans[a] = ans[b] = string[a];
            } else {
                chang[a] = 1;
                kInt -= 1;
                ans[a] = ans[b] = string[b];
            }
            a++;
            b--;
        }

        if (kInt < 0) {
            return @"-1";
        }

        a = 0;
        b = len - 1;
        while (a <= b) {
            if (a == b) {
                if (ans[a] < '9' && kInt > 0)
                    ans[a] = '9';
                break;
            }
            if (ans[a] <'9') {
                if (chang[a] == 0 && chang[b] == 0 && kInt > 1) {
                    kInt -= 2;
                    ans[a] = ans[b] = '9';
                } else if ((chang[a] == 1 || chang[b] == 1) && kInt > 0) {
                    kInt -= 1;
                    ans[a] = ans[b] = '9';
                }
            }
            a++;
            b--;
        }
        ans[len] = 0;

        return [NSString stringWithCString:ans encoding:NSUTF8StringEncoding];
    }

@end
