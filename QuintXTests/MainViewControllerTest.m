#import <XCTest/XCTest.h>
#import "MainViewController.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"
#import "BoardView.h"
#import "Game.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet BoardView *boardView;
@end

@interface MainViewControllerTest : XCTestCase
@end

@implementation MainViewControllerTest{MainViewController *mainViewController;}

- (void)setUp {
	mainViewController = [[MainViewController alloc] init];
}

- (void)testStartsGameOnLoad {
	[mainViewController viewDidLoad];
	assertThat(mainViewController.game, is(notNilValue()));
}

- (void)testInitializesBoardViewWithBoard {
	id boardView = mock([BoardView class]);
	mainViewController.boardView = boardView;
	[mainViewController viewDidLoad];
	[verify(boardView) setBoard:mainViewController.game.board];
}
@end
