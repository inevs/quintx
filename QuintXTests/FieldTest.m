#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"
#import "Field.h"
#import "Player.h"


@interface FieldTest : XCTestCase
@end

@implementation FieldTest{Field *field;}

- (void)setUp {
	field = [[Field alloc] init];
}

- (void)testIsInitiallyFree {
	assertThatBool(field.isAccessible, equalToBool(YES));
}

- (void)testIsNotFreeIfTakenFromPlayer {
	Player *player = [[Player alloc] init];
	[field setPlayer:player];
	assertThatBool(field.isAccessible, equalToBool(NO));
}

@end
