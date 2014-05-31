#import "Field.h"
#import "Player.h"


@implementation Field {

}
+ (instancetype)field {
	return [[Field alloc] init];
}

- (BOOL)isAccessible {
	return _player == nil;
}

- (void)setPlayer:(Player *)player {
	_player = player;
}
@end