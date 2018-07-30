Pod::Spec.new do |s|
  s.name         = "MsgaiChat"
  s.version      = "0.0.1"
  s.summary      = "MsgaiChat iOS SDK for MSGAI Platform."
  s.description  = "MsgaiChat iOS SDK for MSGAI Platform. Chat bot sdk for mobile platform."
  s.homepage     = "http://msg.ai"
  s.license      = { :type => "Commercial", :text => "AI POMSG INC.  All rights reserved." }
  s.author    = "AI POMSG INC"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.swift_version = "4.1"
  s.source   = {
:git => 'https://github.com/msgai/msgaichat-sdk-ios.git', :tag => '0.0.1'
    }
  s.vendored_frameworks   = "MsgaiChat/MsgaiChat.framework"
  s.module_map = "MsgaiChat/MsgaiChat.framework/Modules/module.modulemap"
  s.requires_arc = true
  s.xcconfig            = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/MsgaiChat',
    'SWIFT_INCLUDE_PATHS' =>
    '$(PODS_ROOT)/CommonCryptoSwift/CCommonCrypto' }
  s.dependency 'Alamofire'
  s.preserve_paths = 'CCommonCrypto/module.modulemap'
end
