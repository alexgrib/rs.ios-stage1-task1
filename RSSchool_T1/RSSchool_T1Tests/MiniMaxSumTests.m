#import <XCTest/XCTest.h>
#import "MiniMaxArrayConverter.h"

@interface MiniMaxSumTests : XCTestCase
@end

@implementation MiniMaxSumTests

- (void)testConverter1 {
    NSArray *givenArray = @[@1, @2, @3, @4, @5];
    NSArray *expectedArray = @[@10, @14];
    XCTAssertEqualObjects([[[MiniMaxArrayConverter alloc] init] convertFromArray:givenArray], expectedArray);
}

- (void)testConverter2 {
    NSArray *givenArray = @[@6, @2, @8, @15, @1];
    NSArray *expectedArray = @[@17, @31];
    XCTAssertEqualObjects([[[MiniMaxArrayConverter alloc] init] convertFromArray:givenArray], expectedArray);
}

- (void)testConverter3 {
    NSArray *givenArray = @[@13, @2, @36, @48, @59, @0, @120];
    NSArray *expectedArray = @[@158, @278];
    XCTAssertEqualObjects([[[MiniMaxArrayConverter alloc] init] convertFromArray:givenArray], expectedArray);
}

- (void)testConverter4 {
    NSArray *givenArray = @[@10, @2, @36, @484, @759, @103, @120, @34, @3, @90, @908];
    NSArray *expectedArray = @[@1641, @2547];
    XCTAssertEqualObjects([[[MiniMaxArrayConverter alloc] init] convertFromArray:givenArray], expectedArray);
}

- (void)testConverter5 {
    NSArray *givenArray = @[@10, @9, @8, @7, @6, @5, @4, @3, @2, @1];
    NSArray *expectedArray = @[@45, @54];
    XCTAssertEqualObjects([[[MiniMaxArrayConverter alloc] init] convertFromArray:givenArray], expectedArray);
}

@end
