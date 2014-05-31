#import <XCTest/XCTest.h>
#import "Board.h"
#import "Square.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"


@interface BoardTest : XCTestCase
@end

@implementation BoardTest{Board *board;}

- (void)setUp {
	board = [[Board alloc] init];
}

- (void)testHas5Squares {
	assertThat(board.squares, hasCountOf(5));
}

- (void)testSquaresArePositioned {
	assertThatUnsignedInteger(((Square *)board.squares[SquarePositionTopLeft]).position, equalToUnsignedInteger(SquarePositionTopLeft));
	assertThatUnsignedInteger(((Square *)board.squares[SquarePositionTopRight]).position, equalToUnsignedInteger(SquarePositionTopRight));
	assertThatUnsignedInteger(((Square *)board.squares[SquarePositionMiddle]).position, equalToUnsignedInteger(SquarePositionMiddle));
	assertThatUnsignedInteger(((Square *)board.squares[SquarePositionBottomLeft]).position, equalToUnsignedInteger(SquarePositionBottomLeft));
	assertThatUnsignedInteger(((Square *)board.squares[SquarePositionBottomRight]).position, equalToUnsignedInteger(SquarePositionBottomRight));
}

@end
