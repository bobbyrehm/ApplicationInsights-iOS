Pod::Spec.new do |s|
  s.name             = "ApplicationInsights"
  s.deprecated       = true
  s.version          = "1.0-beta.9"
  s.summary          = "Microsoft Application Insights SDK for iOS"
  s.description      = <<-DESC
                       Application Insights is a service that allows developers to keep their applications available, performant, and successful.
                       This SDK will allow you to send telemetry of various kinds (event, trace, exception, etc.) and useful crash reports to the Application Insights service where they can be visualized in the Azure Portal.
                       DESC
  s.homepage         = "https://github.com/Microsoft/ApplicationInsights-iOS/"
  s.license          = { :type => 'MIT', :file => 'ApplicationInsights/LICENSE' }
  s.author           = { "Microsoft" => "appinsights-ios@microsoft.com" }

  s.source           = { :git => 'https://github.com/bobbyrehm/ApplicationInsights-iOS.git', :tag => s.version.to_s }

  s.source_files     = 'Classes/*.{h,m}'

  s.platform        = :ios, '6.0'
  s.requires_arc    = true

  s.frameworks      = 'CoreTelephony', 'UIKit', 'Foundation', 'SystemConfiguration', 'Security'
  s.libraries       = 'z'

  s.preserve_path   = 'README.md'
end
