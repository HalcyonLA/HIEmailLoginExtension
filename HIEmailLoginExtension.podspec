Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "HIEmailLoginExtension"
s.module_name = "HIEmailLoginExtension"
s.summary = "Halcyon Innovation login component."
s.requires_arc = true
s.version = "1.1.0"
s.author = { "Vlad Getman" => "ibrightsider@gmail.com" }

s.license = { :type => "MIT", :file => "LICENSE" }
s.homepage = "https://github.com/HalcyonLA/HIEmailLoginExtension"
s.source = { :git => "https://github.com/HalcyonLA/HIEmailLoginExtension.git", :tag => "#{s.version}"}

s.dependency 'HILoginManager', '~> 1.1.0'

s.source_files = "Source/**/*.{swift}"

end