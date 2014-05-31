#import <Foundation/Foundation.h>

@class Board;


@interface Game : NSObject

@property (nonatomic, strong) NSArray *players;
@property (nonatomic, strong) Board *board;

@end