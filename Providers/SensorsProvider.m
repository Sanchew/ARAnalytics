#import "SensorsProvider.h"
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>


@implementation SensorsProvider
#ifdef AR_SENSORS_EXISTS

- (instancetype)initWithIdentifier:(NSString *)identifier {
    NSLog(@"Use -[AppsFlyerProvider initWithAppID:devKey:] instead of %s", __PRETTY_FUNCTION__);
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (instancetype)initWithServerURL:(NSString *)serverURL {
    self = [super init];
    if (!self) return nil;

    [SensorsAnalyticsSDK sharedInstanceWithServerURL:serverURL
                                        andDebugMode:SensorsAnalyticsDebugOff];

    return self;
}

- (void)identifyUserWithID:(NSString *)userID andEmailAddress:(NSString *)email {
    if (userID) {
        [[SensorsAnalyticsSDK sharedInstance] login:userID];
    }
}

- (void)event:(NSString *)event withProperties:(NSDictionary *)properties {
    
    NSMutableDictionary *props = [[NSMutableDictionary alloc] initWithDictionary:properties];

    if ([self.eventMappings objectForKey:event]) {
        event = [self.eventMappings objectForKey:event];
    }
    for(NSString *key in properties.allKeys) {
        NSString *nk = [self.customDimensionMappings objectForKey:key];
        if(nk) {
            [props setObject:[properties objectForKey:key] forKey:nk];
            [props removeObjectForKey:key];
        }
    }
    if (event) {
        [[SensorsAnalyticsSDK sharedInstance] track:event
                                 withProperties:props];
    }
}

#endif
@end