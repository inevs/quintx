#import <XCTest/XCTest.h>
#import "Game.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"


@interface GameTest : XCTestCase
@end

@implementation GameTest {
	Game *game;
}

- (void)setUp {
	game = [[Game alloc] init];
}

- (void)testHasTwoPlayers {
	assertThat(game.players, hasCountOf(2));
}

- (void)testHasBoard {
	assertThat(game.board, is(notNilValue()));
}
@end
