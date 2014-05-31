#import <Foundation/Foundation.h>

@class Player;


@interface Field : NSObject
@property (nonatomic, strong) Player *player;

+ (instancetype)field;
- (BOOL)isAccessible;

@end