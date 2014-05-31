#import <XCTest/XCTest.h>

#define MOCKITO_SHORTHAND
#import "OCMockito/OCMockito.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"
#import "Square.h"
#import "Field.h"


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
	assertThatUnsignedInteger(((Field *)square.fields[FieldPositionTopLeft]).position, equalToUnsignedInteger(FieldPositionTopLeft));
	assertThatUnsignedInteger(((Field *)square.fields[FieldPositionTopRight]).position, equalToUnsignedInteger(FieldPositionTopRight));
	assertThatUnsignedInteger(((Field *)square.fields[FieldPositionMiddle]).position, equalToUnsignedInteger(FieldPositionMiddle));
	assertThatUnsignedInteger(((Field *)square.fields[FieldPositionBottomLeft]).position, equalToUnsignedInteger(FieldPositionBottomLeft));
	assertThatUnsignedInteger(((Field *)square.fields[FieldPositionBottomRight]).position, equalToUnsignedInteger(FieldPositionBottomRight));
}

@end
