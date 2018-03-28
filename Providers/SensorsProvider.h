#import "ARAnalyticalProvider.h"

/**
 When using Sensors, you'll need to tell Apple you use the IDFA,
 */
@interface SensorsProvider : ARAnalyticalProvider

- (instancetype)initWithServerURL:(NSString *)serverURL;

@end
