Pod::Spec.new do |s|
  s.name         =  'ARAnalytics'
  s.version      =  '5.0.1'
  s.license      =  {:type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'https://github.com/orta/ARAnalytics'
  s.authors      =  { 'orta' => 'orta.therox@gmail.com', 'Daniel Haight' => "confidence.designed@gmail.com" }
  s.source       =  { :git => 'https://github.com/orta/ARAnalytics.git', :tag => s.version.to_s }
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.7"
  s.social_media_url = "https://twitter.com/orta"
  s.summary      =  'Using subspecs you can define your analytics provider with the same API on iOS.'
  # s.description is at the bottom as it is partially generated.


  mixpanel         = { :spec_name => "Mixpanel",            :dependency => "Mixpanel" }
  localytics       = { :spec_name => "Localytics",          :dependency => "Localytics",            :ios_deployment_target => "8.0" }
  flurry           = { :spec_name => "Flurry",              :dependency => "Flurry-iOS-SDK" }
  google           = { :spec_name => "GoogleAnalytics",     :dependency => "GoogleAnalytics",       :has_extension => true }
  kissmetrics      = { :spec_name => "KISSmetrics",         :dependency => "KISSmetrics" }
  crittercism      = { :spec_name => "Crittercism",         :dependency => "CrittercismSDK" }
  countly          = { :spec_name => "Countly",             :dependency => "Countly" }
  bugsnag          = { :spec_name => "Bugsnag",             :dependency => "Bugsnag" }
  helpshift        = { :spec_name => "Helpshift",           :dependency => "Helpshift" }
  tapstream        = { :spec_name => "Tapstream",           :dependency => "Tapstream" }
  newRelic         = { :spec_name => "NewRelic",            :dependency => "NewRelicAgent" }
  amplitude        = { :spec_name => "Amplitude",           :dependency => "Amplitude-iOS" }
  hockeyApp        = { :spec_name => "HockeyApp",           :dependency => "HockeySDK-Source" }
  hockeyAppLib     = { :spec_name => "HockeyAppLib",        :dependency => "HockeySDK" }
  parseAnalytics   = { :spec_name => "ParseAnalytics",      :dependency => "Parse",                 :has_extension => true }
  heap             = { :spec_name => "HeapAnalytics",       :dependency => "Heap" }
  chartbeat        = { :spec_name => "Chartbeat",           :dependency => "Chartbeat",             :has_extension => true }
  umeng            = { :spec_name => "UMengAnalytics",      :dependency => "UMengAnalytics" }
  segmentio        = { :spec_name => "Segmentio",           :dependency => [["Analytics", ">= 3"]], :tvos => true}
  swrve            = { :spec_name => "Swrve",               :dependency => "SwrveSDK" }
  yandex           = { :spec_name => "YandexMobileMetrica", :dependency => "YandexMobileMetrica" }
  adjust           = { :spec_name => "Adjust",              :dependency => "Adjust" }
  intercom         = { :spec_name => "Intercom",            :dependency => "Intercom",              :ios_deployment_target => "8.0" }
  librato          = { :spec_name => "Librato" }
  crashlytics      = { :spec_name => "Crashlytics",         :dependency => "Crashlytics" }
  fabric           = { :spec_name => "Fabric",              :dependency => ["Fabric", "Crashlytics"] }
  appsflyer        = { :spec_name => "AppsFlyer",           :dependency => "AppsFlyerFramework" }
  branch           = { :spec_name => "Branch",              :dependency => "Branch" }
  snowplow         = { :spec_name => "Snowplow",            :dependency => "SnowplowTracker" }
  sentry           = { :spec_name => "Sentry",              :dependency => "Raven" }
  keen             = { :spec_name => "Keen",                :dependency => "KeenClient" }
  adobe            = { :spec_name => "Adobe",               :dependency => "AdobeMobileSDK" }
  installtracker   = { :spec_name => "InstallTracker",      :dependency => "InstallTracker"}
  appsee           = { :spec_name => "Appsee",              :dependency => "Appsee" }
  mobileapptracker = { :spec_name => "MobileAppTracker",    :dependency => "MobileAppTracker"}
  launchkit        = { :spec_name => "LaunchKit",           :dependency => "LaunchKit" }
  firebase         = { :spec_name => "Firebase",            :dependency => "Firebase/Core" }
  leanplum         = { :spec_name => "Leanplum",            :dependency => "Leanplum-iOS-SDK"}
  appboy           = { :spec_name => "Appboy",              :dependency => "Appboy-iOS-SDK"}

  kissmetrics_mac = { :spec_name => "KISSmetricsOSX",  :dependency => "KISSmetrics",            :osx => true,  :provider => "KISSmetrics" }
# countly_mac     = { :spec_name => "CountlyOSX",      :dependency => "Countly",                :osx => true,  :provider => "Countly" }
  mixpanel_mac    = { :spec_name => "MixpanelOSX",     :dependency => "Mixpanel-OSX-Community", :osx => true,  :provider => "Mixpanel"}
  hockeyApp_mac   = { :spec_name => "HockeyAppOSX",    :dependency => "HockeySDK-Mac",          :osx => true,  :provider => "HockeyAppOSX"}
  parseAnalytics_mac = { :spec_name => "ParseAnalyticsOSX", :dependency => "Parse",             :osx => true,  :provider => "ParseAnalytics", :has_extension => true }

  facebook          = { :spec_name => "Facebook", :dependency => "FBSDKCoreKit" }
  sensors          = { :spec_name => "Sensors",         :dependency => ["SensorsAnalyticsSDK/IDFA","SensorsAnalyticsSDK/DISABLE_TRACK_GPS"],	:frameworks => ['AdSupport'],  :subspecs => ['DISABLE_TRACK_GPS']  }

  all_analytics = [facebook, mixpanel, localytics, flurry, google, kissmetrics, crittercism, crashlytics, fabric, bugsnag, countly, helpshift, kissmetrics_mac, mixpanel_mac, tapstream, newRelic, amplitude, hockeyApp, hockeyAppLib, hockeyApp_mac, parseAnalytics, parseAnalytics_mac, heap, chartbeat, umeng, librato, segmentio, swrve, yandex, adjust, appsflyer, branch, snowplow, sentry, intercom, keen, adobe, installtracker, appsee, mobileapptracker, launchkit, firebase, leanplum, appboy, facebook, sensors]

  spec_keys = [:dependency, :source, :source_files, :vendored_libraries, :frameworks, :libraries]

  # To make the pod spec API cleaner, subspecs are "iOS/KISSmetrics"

  s.subspec "CoreIOS" do |ss|
    ss.source_files = ['*.{h,m}', 'Providers/ARAnalyticalProvider.{h,m}', 'Providers/ARAnalyticsProviders.h']
    ss.exclude_files = ['ARDSL.{h,m}']
    ss.private_header_files = 'ARNavigationControllerDelegateProxy.h'
    ss.tvos.deployment_target = '9.0'
	  ss.ios.deployment_target = '8.0'
  end

  s.subspec "DSL" do |ss|
    ss.source_files = ['ARDSL.{h,m}', 'Extensions/NSMutableDictionary+DSL.{h,m}']
    ss.dependency 'RSSwizzle', '~> 0.1.0'
    ss.dependency 'ReactiveObjC', '~> 2.0'
  end

  # for the description
  all_ios_names = []

  # make specs for each analytics
  all_analytics.each do |analytics_spec|
    s.subspec analytics_spec[:spec_name] do |ss|

      if analytics_spec[:ios_deployment_target]
        ss.ios.deployment_target = analytics_spec[:ios_deployment_target]
      end

      providername = analytics_spec[:provider]? analytics_spec[:provider] : analytics_spec[:spec_name]

      # Each subspec adds a compiler flag saying that the spec was included
      ss.prefix_header_contents = "#define AR_#{providername.upcase}_EXISTS 1"
      sources = ["Providers/#{providername}Provider.{h,m}"]

      # It there's a category adding extra class methods to ARAnalytics
      if analytics_spec[:has_extension]
        sources << "Extensions/*+#{providername}.{h,m,swift}"
      end

      ss.ios.source_files = sources
      
      ss.dependency 'ARAnalytics/CoreIOS'
      ss.platform = :ios
      all_ios_names << providername

      # If there's a podspec dependency include it
      Array(analytics_spec[:dependency]).each do |dep|
          ss.dependency *dep
      end

      if analytics_spec[:vendored_frameworks]
        ss.vendored_frameworks = analytics_spec[:vendored_frameworks]
      end

      if analytics_spec[:vendored_libraries]
        ss.vendored_libraries = analytics_spec[:vendored_libraries]
      end

      if analytics_spec[:requires_arc]
        ss.requires_arc = analytics_spec[:requires_arc]
	     ss.complier_flags = '-fno-objc-arc'
      end

      if analytics_spec[:source]
        ss.source = analytics_spec[:source]
      end

      if analytics_spec[:source_files]
        ss.source_files = analytics_spec[:source_files]
      end

      if analytics_spec[:frameworks]
        ss.frameworks = analytics_spec[:frameworks]
      end

      if analytics_spec[:libraries]
        ss.libraries = analytics_spec[:libraries]
      end

    end
  end

  ios_spec_names = all_ios_names[0...-1].join(", ") + " and " + all_ios_names[-1]
  s.description  =  "ARAnalytics is a analytics abstraction library offering a sane API for tracking events and user data. It currently supports on iOS: #{ ios_spec_names }. It does this by using CocoaPods subspecs to let you decide which libraries you'd like to use. You are free to also use the official API for any provider too. Also, comes with an amazing DSL to clear up your methods."

end
