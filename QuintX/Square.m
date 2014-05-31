#import "Square.h"
#import "Field.h"

NSUInteger FieldPositionTopLeft = 0;
NSUInteger FieldPositionTopRight = 1;
NSUInteger FieldPositionMiddle = 2;
NSUInteger FieldPositionBottomLeft = 3;
NSUInteger FieldPositionBottomRight = 4;

@implementation Square

+ (instancetype)square {
	return [[Square alloc] init];
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
			[Field field],
			[Field field],
			[Field field],
			[Field field],
			[Field field]
	];
}

@end