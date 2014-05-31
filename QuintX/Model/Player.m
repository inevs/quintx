#import "Player.h"


@implementation Player

+ (instancetype)playerWithName:(NSString *)name {
	return [[Player alloc] initWithName:name];
}

- (id)initWithName:(NSString *)name {
	self = [super init];
	if (self) {
		_name = name;
	}
	return self;
}

@end