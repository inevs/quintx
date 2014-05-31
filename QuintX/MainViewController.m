#import "MainViewController.h"
#import "Game.h"
#import "BoardView.h"
#import "Board.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet BoardView *boardView;
@end

@implementation MainViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.game = [[Game alloc] init];
	self.boardView.board = self.game.board;
}



@end
