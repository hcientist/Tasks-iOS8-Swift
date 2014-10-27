//
//  TaskViewViewController.swift
//  Tasks
//
//  Created by Michael Stewart on 10/27/14.
//  Copyright (c) 2014 iOS in Action. All rights reserved.
//

import UIKit

class TaskViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.taskLabel.text = self.task
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
    
    @IBOutlet weak var task: NSString!
    
    @IBOutlet weak var taskLabel: UILabel!
    
    @IBAction func completeTask(sender: AnyObject) {
        var tasksListView = self.delegate as ViewController
        tasksListView.tasks.removeObject(self.task)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
