Pod::Spec.new do |s|
  s.name             = 'SecondScreen'
  s.version          = '0.1.0'
  s.summary          = 'A simple handler for second screen.'

  s.description      = <<-DESC
Manage easily a second screen within your apps
                       DESC

  s.homepage         = 'https://github.com/matteocrippa/SecondScreen'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matteo Crippa' => 'ghego20' }
  s.source           = { :git => 'https://github.com/matteocrippa/SecondScreen.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ghego20'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SecondScreen/Classes/**/*'
  
end
