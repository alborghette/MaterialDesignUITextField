#
# Be sure to run `pod lib lint MaterialDesignUITextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MaterialDesignUITextField"
  s.version          = "0.1.0"
  s.summary          = "iOS text field with Google Material Design layout"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
The goal of this component is create a text field with Google Material Design appearance.
                       DESC

  s.homepage         = "https://github.com/alborghette/MaterialDesignUITextField"
  s.license          = 'MIT'
  s.author           = { "murilo.alborghette" => "murilo.alves@outlook.com" }
  s.source           = { :git => "https://github.com/alborghette/MaterialDesignUITextField.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alborghette'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MaterialDesignUITextFieldXib' => ['**/*.xib']
  }

#s.frameworks = 'UIKit', 'Fundation'
end
