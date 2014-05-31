#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger , SquarePosition) {
	SquarePositionTopLeft,
	SquarePositionTopRight,
	SquarePositionMiddle,
	SquarePositionBottomLeft,
	SquarePositionBottomRight
};

@interface Board : NSObject

@property (nonatomic, strong) NSArray *squares;
@end