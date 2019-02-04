Pod::Spec.new do |s|
  s.name         = "MsgaiChat"
  s.version      = "1.0"
  s.summary      = "MsgaiChat iOS SDK for MSGAI Platform."
  s.description  = "MsgaiChat iOS SDK for MSGAI Platform. Chat bot sdk for mobile platform."
  s.homepage     = "http://msg.ai"
  s.license      = { :type => "Commercial", :text => "AI POMSG INC.  All rights reserved." }
  s.author    = "AI POMSG INC"
  s.platform     = :ios
  s.ios.deployment_target = "9.0"
  s.swift_version = "4.1"
  s.source   = {
:git => 'https://github.com/msgai/msgaichat-sdk-ios.git'
    }
  s.vendored_frameworks   = "MsgaiChat.framework"
  s.module_map = "MsgaiChat.framework/Modules/module.modulemap"
  s.requires_arc = true
  s.dependency 'Firebase/Messaging'
  s.preserve_paths = 'Sources/CCommonCrypto/*'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/MsgaiChat',
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_ROOT)/MsgaiChat/Sources/CCommonCrypto/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_ROOT)/MsgaiChat/Sources/CCommonCrypto/iphonesimulator',
 }

end
