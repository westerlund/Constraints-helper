Pod::Spec.new do |s|
  s.name         = "Constraints-helper"
  s.version      = "0.0.1"
  s.summary      = "Helper category for NSLayoutConstraints"

  s.description  = <<-DESC
                   I got tired of repeatedly writing the same attributes over and over again, so I wrote a small category to help me.

                   Constraints-helper will provide a few helper functions to really strip out the unnecessary parameters
                   DESC

  s.homepage     = "https://github.com/westerlund/Constraints-helper"
  s.license      = "WTFPL"
  
  s.author             = { "Simon Westerlund" => "s@simonwesterlund.se" }
  s.social_media_url   = "http://twitter.com/wesslansimon"

  s.platform     = :ios
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/westerlund/Constraints-helper.git", :tag => "0.0.1" }

  s.source_files  = "Source/*.{h,m}"
end
