#import "Board.h"
#import "Square.h"

@implementation Board

- (id)init {
	self = [super init];
	if (self) {
		[self initializeSquares];
	}
	return self;
}

- (void)initializeSquares {
	_squares = @[
			[Square squareWithPosition:SquarePositionTopLeft],
			[Square squareWithPosition:SquarePositionTopRight],
			[Square squareWithPosition:SquarePositionMiddle],
			[Square squareWithPosition:SquarePositionBottomLeft],
			[Square squareWithPosition:SquarePositionBottomRight]
	];
}

@end