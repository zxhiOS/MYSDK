
Pod::Spec.new do |s|
  s.name         = "MySDK"
  s.version      = "0.0.1"
  s.summary      = "A SDK test"
  s.homepage     = "https://github.com/zxhiOS/MYSDK"
 # s.license      = 'MIT'
 # s.license      = "Copyright (c) 2015年 Lisa. All rights reserved."
  s.license = { :type => 'MIT', :file => 'MIT-LICENSE.txt' }
  s.author       = { "郑信鸿" => "zhengxinhong0511@163.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/zxhiOS/MYSDK.git", :tag => "0.0.1" }
  s.source_files = "MySDK/**/*.{h,m}"
  s.requires_arc = true
 # s.dependency   "FMDB", "~> 2.0"
end
