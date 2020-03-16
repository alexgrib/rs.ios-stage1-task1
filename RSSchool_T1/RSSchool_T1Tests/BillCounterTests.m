#import <XCTest/XCTest.h>
#import "BillCounter.h"

@interface BillCounterTests : XCTestCase
@end

@implementation BillCounterTests

- (void)testCheckFunc1_Success {
    NSArray *bill = @[@10, @1, @9];
    XCTAssertEqualObjects([[BillCounter new] compareResultForBill:bill notIncludingElementWithIndex:0 withGivenSum:@5], @"Bon Appetit");
}

- (void)testCheckFunc2_Success {
    NSArray *bill = @[@3, @10, @2, @9, @18, @25];
    XCTAssertEqualObjects([[BillCounter new] compareResultForBill:bill notIncludingElementWithIndex:3 withGivenSum:@29], @"Bon Appetit");
}

- (void)testCheckFunc3_DifferentSum {
    NSArray *bill = @[@3, @10, @2, @9];
    XCTAssertEqualObjects([[BillCounter new] compareResultForBill:bill notIncludingElementWithIndex:1 withGivenSum:@12], @"5");
}

- (void)testCheckFunc4_DifferentSum {
    NSArray *bill = @[@3, @10, @2, @9, @18, @25, @45];
    XCTAssertEqualObjects([[BillCounter new] compareResultForBill:bill notIncludingElementWithIndex:4 withGivenSum:@69], @"22");
}
@end
