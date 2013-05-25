Pod::Spec.new do |s|
  s.name         = "TWReverseAuth"
  s.version      = "1.0.0"
  s.summary      = "Twitter Reverse Auth."
  s.license      = "MIT"
  s.homepage     = "https://github.com/seancook/TWReverseAuthExample"
  s.author       = { "Sean Cook" => "sean.cook@gmail.com" }
  s.source       = { :git => "https://github.com/Tout/TWReverseAuthExample.git", :tag => "#{s.version}" }
  s.platform     = :ios
  s.source_files = 'Source/Classes/**/*.{h,m}'
  s.exclude_files = 'Source/Classes/**/*AppDelegate.{h,m}', 'Source/Classes/**/*ViewController.{h,m}'
  s.requires_arc = true

  s.frameworks      = 'Accounts', 'Twitter'
  s.weak_frameworks = 'Social'

  s.ios.deployment_target = '5.0'

  s.subspec 'ABOAuth' do |a|
    a.source_files = 'Source/Vendor/**/*.{h,m}'
    a.requires_arc = false
  end

end
