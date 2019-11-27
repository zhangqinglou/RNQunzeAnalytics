
Pod::Spec.new do |s|
  s.name         = "RNQunzeAnalytics"
  s.version      = "1.0.1"
  s.summary      = "RNQunzeAnalytics"
  s.description  = "qunze analytics"
  s.homepage     = "https://github.com/zhangqinglou/RNQunzeAnalytics"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "zhangyi1288@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/zhangqinglou/RNQunzeAnalytics.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m}"
  #s.vendored_frameworks = "ios/libs/analytics_ios_6.0.5/UMAnalytics.framework","ios/libs/common_ios_2.1.1/normal/UMCommon.framework"
  s.libraries = "z", "sqlite3"
  s.frameworks = "CoreTelephony","SystemConfiguration"
  s.requires_arc = true


  s.dependency 'UMCCommon'
  s.dependency 'UMCAnalytics'
  s.dependency "React"
  #s.dependency "others"

end

  