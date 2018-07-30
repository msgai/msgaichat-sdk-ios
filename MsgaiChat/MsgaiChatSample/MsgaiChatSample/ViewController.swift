//
//  ViewController.swift
//  MsgaiChatSample
//
//  Created by Jeeva on 6/13/18.
//  Copyright © 2018 MSGAI. All rights reserved.
//

import UIKit
import MsgaiChat

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var textFieldFirstName: UITextField!
    @IBOutlet var textFieldLastName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textFieldFirstName.text = UserDefaults.standard.string(forKey: "firstName")
        textFieldLastName.text = UserDefaults.standard.string(forKey: "lastName")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startChat(_ sender: Any) {
        
        if (textFieldFirstName.text?.isEmpty)! {
            let alert = UIAlertController(title: "", message: "Please enter first name.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                self.textFieldFirstName.becomeFirstResponder()
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else if (textFieldLastName.text?.isEmpty)!{
            let alert = UIAlertController(title: "", message: "Please enter last name.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                self.textFieldLastName.becomeFirstResponder()
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else{
         
            UserDefaults.standard.set(textFieldFirstName.text, forKey: "firstName")
            UserDefaults.standard.set(textFieldLastName.text, forKey: "lastName")
            
            let user = MCUser.currentUser()
            user.crmId = "user0"
            user.firstName = textFieldFirstName.text
            user.lastName = textFieldLastName.text
            user.location = "New York"
            user.properties = ["key1":"value1",
                               "key2":"value2"]
            MsgaiChat.setUser(user)            
            MsgaiChat.startChat()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

