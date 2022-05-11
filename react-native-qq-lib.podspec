require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-qq-lib"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/yangdong-wuye/react-native-qq-lib.git", :tag => "#{s.version}" }
  
  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  
  s.vendored_frameworks = [
    'ios/**/*.framework'
  ]

  s.dependency "React"
end

