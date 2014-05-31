#import <XCTest/XCTest.h>
#import "MainViewController.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"

@interface MainViewControllerTest : XCTestCase
@end

@implementation MainViewControllerTest

- (void)testStartsGameOnLoad {
	MainViewController *mainViewController = [[MainViewController alloc] init];
	[mainViewController viewDidLoad];
	assertThat(mainViewController.game, is(notNilValue()));
}

@end
