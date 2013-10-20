Pod::Spec.new do |s|
  s.name         = "YSPopButton"
  s.version      = "0.0.7"
  s.summary      = "Pop Animation Button."

  s.description  = <<-DESC
                   Pop Animation Button.
                   DESC

  s.homepage     = "http://u16suzu.hatenablog.com/"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "u16suzu" => "u16suzu@gmail.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "https://github.com/u16suzu/YSPopButton.git", 
    :tag => "0.0.7" }
  s.source_files  = 'YSPopButton/**/*.{h,m}'
  s.dependency 'BlocksKit'
  s.dependency 'AHEasing'

end
