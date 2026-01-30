#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint screen_protector.podspec --verbose --no-clean` to validate before publishing.
# Run `pod install --repo-update --verbose` to update new version.
#
# This is a forked version with VoiceOver accessibility fix.
# Replaced ScreenProtectorKit with custom AccessibleScreenPreventer that properly
# configures accessibility properties on the hidden UITextField to prevent VoiceOver interference.
#
Pod::Spec.new do |s|
  s.name             = 'screen_protector'
  s.version          = '1.5.1-accessible'
  s.summary          = 'Safe Data Leakage via Application Background Screenshot and Prevent Screenshot for Android and iOS. (VoiceOver Accessible Fork)'
  s.description      = <<-DESC
Safe Data Leakage via Application Background Screenshot and Prevent Screenshot for Android and iOS.
This is a forked version with VoiceOver accessibility fix for iOS.
                       DESC
  s.homepage         = 'https://github.com/prongbang/screen_protector'
  s.license          = { :file => '../LICENSE' }
  s.author           = 'prongbang'
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  # No ScreenProtectorKit dependency - using custom AccessibleScreenPreventer instead
  s.platform         = :ios, '12.0'
  s.swift_version    = ["4.0", "4.1", "4.2", "5.0", "5.1", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7", "5.8", "5.9"]
end
