Pod::Spec.new do |s|
  s.name         = "TouchPopUp"
  s.version      = "1.0"
  s.summary      = "a simple web view popup"

  s.description  = <<-DESC
                   A longer description of TouchPopUp in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/iMokhles/TouchPopUp"
  s.screenshots  = "https://raw.githubusercontent.com/iMokhles/TouchPopUp/master/Screenshots/TouchPopUpDemo.png"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Mokhlas Hussein" => "mokhleshussien@aol.com" }
  s.social_media_url   = "http://twitter.com/iMokhles"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/iMokhles/TouchPopUp.git", :tag => "v1.0" }
  s.source_files  = 'TouchPopUp/*.{h,m}'
  s.requires_arc = true

end
