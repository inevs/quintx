#import "Square.h"
#import "Field.h"

@implementation Square

+ (id)squareWithPosition:(SquarePosition)position {
	Square *square = [[Square alloc] init];
	square.position = position;
	return square;
}

- (id)init {
	self = [super init];
	if (self) {
		[self initializeFields];
	}
	return self;
}

- (void)initializeFields {
	_fields = @[
			[Field fieldWithPosition:FieldPositionTopLeft],
			[Field fieldWithPosition:FieldPositionTopRight],
			[Field fieldWithPosition:FieldPositionMiddle],
			[Field fieldWithPosition:FieldPositionBottomLeft],
			[Field fieldWithPosition:FieldPositionBottomRight]
	];
}

@end