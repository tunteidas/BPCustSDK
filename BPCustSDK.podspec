#
#  Be sure to run `pod spec lint BPCustSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "BPCustSDK"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of BPCustSDK."
  spec.description      = <<-DESC
          A long description of BPCustSDK.
                       DESC


  spec.homepage     = "https://github.com/tunteidas/BPCustSDK"
  spec.author       = { 'tunt' => 'tunt@eidas.vn' }
  spec.license      = "MIT"
  
  spec.platform = :ios
  spec.ios.deployment_target = "13.0"

  spec.source            = { :http => 'https://github.com/tunteidas/BPCustSDK/releases/download/1.0.0/BPCustSDK.zip' }

  # spec.dependency 'BPCommonSDK', '1.0.0'
  # spec.dependency 'LivenessUtility', '1.0.12'

  spec.vendored_frameworks = 'BPCustSDK/BioPayCustSDK.xcframework'
  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }


end
