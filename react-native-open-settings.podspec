require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name           = "react-native-open-settings"
  s.version        = package["version"]
  s.summary        = package["description"]
  s.description    = package['description']
  s.license        = package["license"]
  s.author         = package["author"]
  s.homepage       = "https://github.com/ChefSteps/react-native-open-settings"
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.source         = { :git => "https://github.com/ChefSteps/react-native-open-settings", :tag => 'v' + s.version.to_s }
  s.source_files   = 'RNOpenSettings.{h,m}'
  s.preserve_paths = "**/*.js"
  s.dependency 'React'
end
