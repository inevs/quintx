#import <Foundation/Foundation.h>


@interface Player : NSObject

@property (nonatomic, strong) NSString *name;
+ (instancetype)playerWithName:(NSString *)name;

- (id)initWithName:(NSString *)name;
@end