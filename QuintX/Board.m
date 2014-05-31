#import "Board.h"
#import "Square.h"

NSUInteger SquarePositionTopLeft = 0;
NSUInteger SquarePositionTopRight = 1;
NSUInteger SquarePositionMiddle = 2;
NSUInteger SquarePositionBottomLeft = 3;
NSUInteger SquarePositionBottomRight = 4;

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
			[Square square],
			[Square square],
			[Square square],
			[Square square],
			[Square square]
	];
}

@end