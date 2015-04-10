//
//  SecondViewController.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Copyright (c) 2015 200235076. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    //Outlets for text fields
    @IBOutlet var txtItem: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //button event
    @IBAction func buttonAddTask_Click(sender: UIButton){
        println("The Button was clicked motherfucker")
    }
    
    //touch event will close the keyboard
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    //called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }


}

