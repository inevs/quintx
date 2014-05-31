#import <Foundation/Foundation.h>
#import "Square.h"

@class Player;


@interface Field : NSObject
@property (nonatomic, strong) Player *player;

@property (nonatomic) FieldPosition position;
+ (instancetype)fieldWithPosition:(FieldPosition)position;

- (BOOL)isAccessible;

@end