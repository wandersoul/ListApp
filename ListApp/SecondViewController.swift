//
//  SecondViewController.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Created by Marc Anderson
//  Purpose: SecondViewController displays a form to create a new task item to the user. Users will select each
//  field to enter text through the standard keyboard. Tapping away from the keyboard while editing will result
//  in the keyboard disappearing, same as selecting done on the keyboard. When the user finishes editing thier 
//  new item, the user will select the button to save the new item in the first view's list.
//  Copyright (c) 2015 200235076. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    //Outlets for text fields
    @IBOutlet var txtItem: UITextField!
    @IBOutlet var txtDesc: UITextField!

    //generated function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //generated function
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //button event, releasing (clicking) the button calls the itemManager and adds the task to the list
    @IBAction func buttonAddTask_Click(sender: UIButton){
        itemMgrs.addTask(txtItem.text, desc: txtDesc.text);
        self.view.endEditing(true);
        //empty text boxes for next input
        txtItem.text = ""
        txtDesc.text = ""
        //shoot the user back to the newly modified list on the first tab!
        self.tabBarController?.selectedIndex = 0;
    }
    
    //touch event on whitespace will close the keyboard
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField Delegate
    //called when 'return' key pressed, keyboard disappears
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }


}

