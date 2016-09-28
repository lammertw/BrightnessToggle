Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "BrightnessToggle"
  s.summary = "BrightnessToggle lets you toggle between maximum screen brightness and back."
  s.requires_arc = true
  s.version = "0.3.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Lammert Westerhoff" => "lwesterhoff@xebia.com" }
  s.homepage = "https://github.com/lammertw/BrightnessToggle"
  s.source = { :git => "https://github.com/lammertw/BrightnessToggle.git", :tag => "0.3.0"}
  s.framework = "UIKit"
  s.source_files = "BrightnessToggle/**/*.{swift}"
end
