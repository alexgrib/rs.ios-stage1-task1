#import <XCTest/XCTest.h>
#import "T1Array.h"

@interface T1ArrayTest : XCTestCase
@end

@implementation T1ArrayTest

- (void)test0 {
    NSArray *array = @[@1, @5, @2, @7, @93, @8, @9, @3];
    NSArray *result = @[@1, @2, @7, @8, @9, @3];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertTrue(flag);
}

- (void)test1 {
    NSArray *array = @[@1, @2, @2, @9, @93, @2, @6, @9, @6, @10];
    NSArray *result = @[@1, @2, @2, @2, @6, @9, @6, @10];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertTrue(flag);
}

- (void)test2 {
    NSArray *array = @[@56, @32, @5, @31, @43, @55, @11, @87, @43, @62];
    NSArray *result = @[@56, @32, @5, @11, @43, @62];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertTrue(flag);
}

- (void)test3 {
    NSArray *array = @[@1, @2, @2, @9, @93, @2, @6, @8, @6, @12];
    NSArray *result = @[@1, @2, @2, @9, @2, @6, @8, @6, @12];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertFalse(flag);
}

- (void)test4 {
    NSArray *array = @[@1, @3, @1];
    NSArray *result = @[@1, @3, @1];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertFalse(flag);
}

- (void)test5 {
    NSArray *array = @[];
    NSArray *result = @[];
    bool flag = [result isEqualToArray:[[T1Array new] convertToHappy: array]];
    XCTAssertTrue(flag);
}


@end
