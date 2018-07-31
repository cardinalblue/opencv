Pod::Spec.new do |s|
  s.name         = 'OpenCV@cb'
  s.version      = '0.0.1'
  s.summary      = 'OpenCV framework for iOS'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'waniwang' => 'wani420@gmail.com' }
  s.homepage     = 'https://github.com/cardinalblue/opencv'
  s.requires_arc = true
  s.platform     = :ios, '8.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/cardinalblue/cocoapods/OpenCV%40cb-0.0.1.zip" }
  s.vendored_frameworks = "opencv2.framework"
  s.static_framework = true
end