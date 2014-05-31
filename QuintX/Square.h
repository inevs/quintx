#import <Foundation/Foundation.h>

extern NSUInteger FieldPositionTopLeft;
extern NSUInteger FieldPositionTopRight;
extern NSUInteger FieldPositionMiddle;
extern NSUInteger FieldPositionBottomLeft;
extern NSUInteger FieldPositionBottomRight;

@interface Square : NSObject

@property (nonatomic, strong) NSArray *fields;
+ (instancetype)square;

@end