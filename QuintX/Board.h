#import <Foundation/Foundation.h>

extern NSUInteger SquarePositionTopLeft;
extern NSUInteger SquarePositionTopRight;
extern NSUInteger SquarePositionMiddle;
extern NSUInteger SquarePositionBottomLeft;
extern NSUInteger SquarePositionBottomRight;

@interface Board : NSObject

@property (nonatomic, strong) NSArray *squares;
@end