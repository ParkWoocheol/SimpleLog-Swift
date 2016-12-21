#
# Be sure to run `pod lib lint SimpleLog-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'SimpleLog-Swift'
s.version          = '0.1.0'
s.summary          = 'Simple Log for Swift by Park, Woocheol'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.homepage         = 'https://github.com/ParkWoocheol/SimpleLog-Swift'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Woocheol Park' => 'magic1wp@naver.com' }
s.source           = { :git => 'https://github.com/ParkWoocheol/SimpeLog-Swift.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '9.0'
s.requires_arc = true

s.source_files = 'SimpleLog-Swift/Classes/**/*'

# s.resource_bundles = {
#   'SimpleLog-Swift' => ['SimpleLog-Swift/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
