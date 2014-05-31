#import "BoardView.h"
#import "Board.h"
#import "Square.h"
#import "Field.h"


@implementation BoardView

- (void)setBoard:(Board *)board {
	_board = board;
	for (Square *square in board.squares) {
		CALayer *shapeLayer = [self buildSquareShapeForSquare:square];
		[self.layer addSublayer:shapeLayer];
	}
}

- (CALayer *)buildSquareShapeForSquare:(Square *)square {
	CGFloat length = (CGFloat) (self.bounds.size.width / 1.825);
	CALayer *squareLayer = [self squareWithLength:length];
	for (Field *field in square.fields) {
		CGFloat diameter = (CGFloat) (length / 5.0);
		CALayer *fieldLayer = [self fieldLayerForField:field diameter:diameter];
		fieldLayer.position = [self convertFieldPosition:field.position diameter:diameter];
		[squareLayer addSublayer:fieldLayer];
	}
	squareLayer.position = [self convertSquarePosition:square.position sideLength:length];
	return squareLayer;
}

- (CALayer *)fieldLayerForField:(Field *)field diameter:(CGFloat)diameter {
	CAShapeLayer *layer = [CAShapeLayer layer];
	CGRect rect = CGRectMake(0, 0, diameter, diameter);
	CGPathRef path = CGPathCreateWithEllipseInRect(rect, NULL);
	layer.path = path;
	layer.strokeColor = [UIColor whiteColor].CGColor;
	layer.lineWidth = 2.0;
	layer.fillColor = [UIColor clearColor].CGColor;
	return layer;
}

- (CAShapeLayer *)squareWithLength:(CGFloat)length {
	CAShapeLayer *layer = [CAShapeLayer layer];
	CGRect rect = CGRectMake(0, 0, length - 50, length - 50);
	CGPathRef path = CGPathCreateWithRoundedRect(rect, 10, 10, NULL);
	layer.path = path;
	layer.strokeColor = [UIColor blackColor].CGColor;
	layer.lineWidth = 2.0;
	layer.fillColor = [UIColor clearColor].CGColor;
	return layer;
}

- (CGPoint)convertFieldPosition:(FieldPosition)position diameter:(CGFloat)diameter {
	CGPoint result = CGPointMake(0, 0);
	switch (position) {
		case FieldPositionTopLeft:
			result.x += diameter / 3.0;
			result.y += diameter / 3.0;
			break;
		case FieldPositionTopRight:
			result.x += diameter / 3.0 + diameter * 2.5;
			result.y += diameter / 3.0;
			break;
		case FieldPositionMiddle:
			result.x += diameter / 3.0 + diameter * 1.25;
			result.y += diameter / 3.0 + diameter * 1.25;
			break;
		case FieldPositionBottomLeft:
			result.x += diameter / 3.0;
			result.y += diameter / 3.0 + diameter * 2.5;
			break;
		case FieldPositionBottomRight:
			result.x += diameter / 3.0 + diameter * 2.5;
			result.y += diameter / 3.0 + diameter * 2.5;
			break;
	}
	return result;
}

- (CGPoint)convertSquarePosition:(SquarePosition)position sideLength:(CGFloat)length {
	CGPoint result = CGPointMake(0, 0);
	switch (position) {
		case SquarePositionTopLeft:
			break;
		case SquarePositionTopRight:
			result.x += length;
	        break;
		case SquarePositionMiddle:
			result.x += length / 2.0;
	        result.y += length / 2.0;
	        break;
		case SquarePositionBottomLeft:
			result.y += length;
	        break;
		case SquarePositionBottomRight:
			result.x += length;
	        result.y += length;
	        break;
	}
	return result;
}

@end