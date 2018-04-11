//
//  NSMutableDictionary+GoogleAnalytics.h
//  Pods
//
//  Created by Ian Grossberg on 12/3/13.
//
//

#import <Foundation/Foundation.h>
#import "ARDSL.h"

@interface NSMutableDictionary (DSL)

- (void) setARAnalyticsProperties:(ARAnalyticsPropertiesBlock) block;
- (void) setARAnalyticsPropertiesCallback:(ARAnalyticsPropertiesCallbackBlock) block;
- (void) setARAnalyticsEventName:(ARAnalyticsNameBlock) block;
- (void) setARAnalyticsPageName:(ARAnalyticsNameBlock) block;
- (void) setARAnalyticsShouldFire:(ARAnalyticsEventShouldFireBlock) block;
- (void) setARAnalyticsFactory:(ARAnalyticsEventFactoryBlock) block;

@end
