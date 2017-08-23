

Pod::Spec.new do |s|
s.name             = 'SimpleLog-Swift'
s.version          = ‘1.0.3’
s.summary          = 'Simple Log for Swift by Park, Woocheol'



s.homepage         = 'https://github.com/ParkWoocheol/SimpleLog-Swift'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Woocheol Park' => 'admin@mrparkwc.com' }
s.source           = { :git => 'https://github.com/ParkWoocheol/SimpeLog-Swift.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.requires_arc = true

s.source_files = 'SimpleLog-Swift/Classes/**/*'

end
