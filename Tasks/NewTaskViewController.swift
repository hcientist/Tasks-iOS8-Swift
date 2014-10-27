//
//  NewTaskViewController.swift
//  Tasks
//
//  Created by Michael Stewart on 10/27/14.
//  Copyright (c) 2014 iOS in Action. All rights reserved.
//

import UIKit


class NewTaskViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.textField.becomeFirstResponder()
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var delegate: AnyObject!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveTask(sender: AnyObject) {
        if (self.textField.text.utf16Count == 0) {
            return;
        } else {
            var tasksListView = self.delegate as ViewController
            tasksListView.tasks.addObject(self.textField.text)
            self.close(sender)
        }
    }
    
    @IBAction func close(sender: AnyObject) {
        println("trying to close")
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == self.textField) {
            self.saveTask(self)
            return true
        }// if there were another textfield, instead of returning, we could focus the next textbox
        return true
    }
}
