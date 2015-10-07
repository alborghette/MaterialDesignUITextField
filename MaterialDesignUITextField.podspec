Pod::Spec.new do |s|
  s.name             = "MaterialDesignUITextField"
  s.version          = "0.1.1"
  s.summary          = "iOS text field with Google Material Design layout"

  s.description      = <<-DESC
The goal of this component is create a iOS text field with Google Material Design appearance.
                       DESC

  s.homepage         = "https://github.com/alborghette/MaterialDesignUITextField"
  s.license          = 'MIT'
  s.author           = { "Murilo Alves Alborghette" => "murilo.alves@outlook.com" }
  s.source           = { :git => "https://github.com/alborghette/MaterialDesignUITextField.git", :tag => s.version.to_s }
#s.social_media_url = 'https://twitter.com/alborghette'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MaterialDesignUITextFieldXib' => ['**/*.xib']
  }

  s.frameworks = 'UIKit'
end
