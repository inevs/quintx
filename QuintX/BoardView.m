#import "BoardView.h"
#import "Board.h"
#import "Square.h"


@implementation BoardView

- (void)setBoard:(Board *)board {
	_board = board;
	for (Square *square in board.squares) {
		CAShapeLayer *shapeLayer = [self buildSquareShape];
		[self.layer addSublayer:shapeLayer];
	}
}

- (CAShapeLayer *)buildSquareShape {
	CAShapeLayer *shapeLayer = [CAShapeLayer layer];
	CGRect rect = CGRectMake(0, 0, 200, 200);
	CGPathRef path = CGPathCreateWithRoundedRect(rect, 10, 10, NULL);
	shapeLayer.path = path;
	shapeLayer.strokeColor = [UIColor blackColor].CGColor;
	shapeLayer.lineWidth = 2.0;
	shapeLayer.fillColor = [UIColor clearColor].CGColor;
	return shapeLayer;
}

@end