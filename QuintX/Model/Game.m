#import "Game.h"
#import "Player.h"
#import "Board.h"


@implementation Game

- (id)init {
	self = [super init];
	if (self) {
		[self initializePlayers];
		_board = [[Board alloc] init];
	}
	return self;
}

- (void)initializePlayers {
	_players = @[
			[Player playerWithName:@"Hans"],
			[Player playerWithName:@"Klaus"]
	];

}

@end