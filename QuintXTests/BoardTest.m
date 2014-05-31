#import <XCTest/XCTest.h>
#import "Board.h"

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
	assertThat(board.squares[SquarePositionTopLeft], is(notNilValue()));
	assertThat(board.squares[SquarePositionTopRight], is(notNilValue()));
	assertThat(board.squares[SquarePositionMiddle], is(notNilValue()));
	assertThat(board.squares[SquarePositionBottomLeft], is(notNilValue()));
	assertThat(board.squares[SquarePositionBottomRight], is(notNilValue()));
}

@end
