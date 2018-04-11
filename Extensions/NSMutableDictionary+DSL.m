//
//  NSMutableDictionary+GoogleAnalytics.m
//  Pods
//
//  Created by Ian Grossberg on 12/3/13.
//
//

#import "NSMutableDictionary+DSL.h"

@implementation NSMutableDictionary (DSL)

- (void)setARAnalyticsProperties:(ARAnalyticsPropertiesBlock)block {
    [self setObject:block forKey:ARAnalyticsProperties];
}

- (void)setARAnalyticsPropertiesCallback:(ARAnalyticsPropertiesCallbackBlock)block {
    [self setObject:block forKey:ARAnalyticsPropertiesCallback];
}

- (void)setARAnalyticsFactory:(ARAnalyticsEventFactoryBlock)block {
    [self setObject:block forKey:ARAnalyticsEventFactory];
}

- (void)setARAnalyticsShouldFire:(ARAnalyticsEventShouldFireBlock)block {
    [self setObject:block forKey:ARAnalyticsShouldFire];
}

- (void)setARAnalyticsPageName:(ARAnalyticsNameBlock)block {
    [self setObject:block forKey:ARAnalyticsPageNameBlock];
}

- (void)setARAnalyticsEventName:(ARAnalyticsNameBlock)block {
    [self setObject:block forKey:ARAnalyticsEventNameBlock];
}

@end
