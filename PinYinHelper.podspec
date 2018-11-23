#
#  Be sure to run `pod spec lint PinYinHelper.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "PinYinHelper"
  s.version      = "0.0.2"
  s.summary      = "一个与拼音操作相关的swift库"
  s.homepage     = "https://github.com/clint23/PinYinHelper"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "clint" => "3243629382@qq.com" }
  s.platform     = :ios, "8.0"
  s.swift_version = '4.1'
  s.source       = { :git => "https://github.com/clint23/PinYinHelper.git", :tag => "#{s.version}" }
  s.source_files  = "PinYinHelper/PinYinHelper/*.{swift}"
  s.framework  = "UIKit"
  s.requires_arc = true
end
