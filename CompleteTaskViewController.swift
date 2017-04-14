//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by callum brennan on 09/04/2017.
//  Copyright © 2017 callum brennan Mementcode. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {



    @IBOutlet weak var taskLabel: UILabel!
    var task : Task? = nil

        
       override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
           taskLabel.text = "‼️\(task!.name!)"
        }else {
            taskLabel.text = task!.name!
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
       
        context.delete(task!) // deletes a task once it is complete
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true) // pops back
    }

    
    }

