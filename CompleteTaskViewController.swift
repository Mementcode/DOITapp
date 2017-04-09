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
    
    var task = Task()
    var previousVC = ViewController()
    
       override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
           taskLabel.text = "‼️\(task.name)"
        }else {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

    
    }

