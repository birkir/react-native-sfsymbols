require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                  = "react-native-sfsymbols"
  s.version               = package["version"]
  s.license               = package["license"]
  s.summary               = package["description"]
  s.authors               = package["author"]
  s.homepage              = package["homepage"]
  
  s.platforms             = { :ios => "10.0", :tvos => "10.0" }
  
  s.source                = { :git => package["repository"]["url"], :tag => "v#{s.version}" }
  s.source_files          = "ios/*.{h,m}"
  s.requires_arc = true
  
  s.dependency "React"
end
