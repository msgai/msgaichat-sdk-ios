//
//  AppDelegate.swift
//  DemoApp
//
//  Created by Jeeva on 7/31/18.
//  Copyright © 2018 MSGAI. All rights reserved.
//

import UIKit
import MsgaiChat

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let settings = MCSettings.defaultSettings()
        settings.brandName = "#BrandName"
        settings.brandLogo = UIImage(named:"#BrandLogo")
        MsgaiChat.with(botKey:"#MSGAIBotKey", secretKey: "#SecretKey", settings: settings, launchOptions: launchOptions)
        MsgaiChat.setDelegate(self)
        
        return true
    }


}

extension AppDelegate: MsgaiChatDelegate{
    
    //Whenever user sends a new message to bot.
    func chatViewUserMessagePosted(_ messageJson: [String]) {
        
    }
    
    //Whenever bot replies to user.
    func chatViewBotPostedMessage(_ messageJson: [String]) {
        
    }
    
    //Whenever chat view did appear.
    func chatViewDidAppear(_ animated: Bool) {
        
    }
    
    //Whenever chat view did disappear.
    func chatViewDidDisappear(_ animated: Bool) {
        
    }
    
    //Whenever chat view get closed.
    func chatViewClosed() {
        print("chatViewClosed() called")
    }
    
    //Whenever SDK has some logs to share.
    func chatViewLog(_ type: MCLogType, _ text: String, _ error: Error?) {
        print(text)
    }
    
}
