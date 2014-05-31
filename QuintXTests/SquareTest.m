#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"
#import "Square.h"


@interface SquareTest : XCTestCase
@end

@implementation SquareTest{Square *square;}

- (void)setUp {
	square = [[Square alloc] init];
}

- (void)testHas5Fields {
	assertThat(square.fields, hasCountOf(5));
}

- (void)testFieldsArePositioned {
	assertThat(square.fields[FieldPositionTopRight], is(notNilValue()));
	assertThat(square.fields[FieldPositionMiddle], is(notNilValue()));
	assertThat(square.fields[FieldPositionTopLeft], is(notNilValue()));
	assertThat(square.fields[FieldPositionBottomLeft], is(notNilValue()));
	assertThat(square.fields[FieldPositionBottomRight], is(notNilValue()));
}

@end
