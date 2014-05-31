#import <XCTest/XCTest.h>
#import "Player.h"

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"


@interface PlayerTest : XCTestCase
@end

@implementation PlayerTest

- (void)testhasName {
	Player *player = [Player playerWithName:@"name"];
	assertThat(player.name, is(@"name"));
}

@end
