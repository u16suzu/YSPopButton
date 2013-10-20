Pod::Spec.new do |s|
  s.name         = "YSPopButton"
  s.version      = "0.0.5"
  s.summary      = "Pop Animation Button."

  s.description  = <<-DESC
                   Pop Animation Button.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://u16suzu.hatenablog.com/"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "u16suzu" => "u16suzu@gmail.com" }
  s.platform     = :ios, '5.0'
  s.source       = { :git => "ssh://git@bitbucket.org/u16suzu/yspopbutton.git", 
    :tag => "0.0.5" }
  s.source_files  = 'YSPopButton/**/*.{h,m}'
  s.resources = 'YSPopButton/**/App-Bits Icons/*'
  s.dependency 'BlocksKit'
  s.dependency 'AHEasing'

end
