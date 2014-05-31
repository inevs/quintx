#import <Foundation/Foundation.h>
#import "Board.h"

extern NSUInteger FieldPositionTopLeft;
extern NSUInteger FieldPositionTopRight;
extern NSUInteger FieldPositionMiddle;
extern NSUInteger FieldPositionBottomLeft;
extern NSUInteger FieldPositionBottomRight;

@interface Square : NSObject

@property (nonatomic, strong) NSArray *fields;
@property (nonatomic) enum SquarePosition position;

+ (instancetype)square;
+ (id)squareWithPosition:(SquarePosition)position;

@end