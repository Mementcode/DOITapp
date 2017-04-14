//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by callum brennan on 09/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        
        //create a task from the outlets information
        
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext // allows to taap into persistentContainer in AppDelegate for use of CoreData
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        navigationController!.popViewController(animated: true)
        
        
    }
    
}
