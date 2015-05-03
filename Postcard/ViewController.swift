//
//  ViewController.swift
//  Postcard
//
//  Created by Ryan Jones on 4/28/15.
//  Copyright (c) 2015 Ryan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //adding a comment to test git commits.
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.text = ""
//        enterNameTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

