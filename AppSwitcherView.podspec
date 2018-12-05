#
# Be sure to run `pod lib lint AppSwitcherView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AppSwitcherView'
  s.version          = '0.1.1'
  s.summary          = 'Show LaunchScreen or your UIView/UIViewController instead app snapshot in the App Switcher.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Show LaunchScreen or your UIView/UIViewController instead app snapshot in the App Switcher'
                       DESC

  s.homepage         = 'https://github.com/moon4ik/AppSwitcherView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Oleksii Mykhailenko' => 'moon4ik@gmail.com' }
  s.source           = { :git => 'https://github.com/moon4ik/AppSwitcherView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'

  s.source_files = 'AppSwitcherView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AppSwitcherView' => ['AppSwitcherView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
