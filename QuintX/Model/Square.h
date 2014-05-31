#import <Foundation/Foundation.h>
#import "Board.h"

typedef NS_ENUM(NSUInteger , FieldPosition) {
	FieldPositionTopLeft,
	FieldPositionTopRight,
	FieldPositionMiddle,
	FieldPositionBottomLeft,
	FieldPositionBottomRight
};

@interface Square : NSObject

@property (nonatomic, strong) NSArray *fields;
@property (nonatomic) enum SquarePosition position;

+ (id)squareWithPosition:(SquarePosition)position;

@end