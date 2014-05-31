#import "Field.h"
#import "Player.h"
#import "Square.h"


@implementation Field

+ (instancetype)fieldWithPosition:(FieldPosition)position {
	Field *field = [[Field alloc] init];
	field.position = position;
	return field;
}

- (BOOL)isAccessible {
	return _player == nil;
}

- (void)setPlayer:(Player *)player {
	_player = player;
}
@end