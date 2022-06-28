//
//  AddToDoViewController.swift
//  Todolist
//
//  Created by Yash Patil on 15/04/22.
//

import UIKit

class AddToDoViewController: UIViewController {

    
    var toDoTableViewController : ToDoTableViewController? = nil
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addtapped(_ sender: Any)
    {
        let newtodo = ToDo()
        newtodo.priority  = prioritySegment.selectedSegmentIndex
        if let name = nameTextField.text{
            newtodo.name = name
        }
        toDoTableViewController?.toDos.append(newtodo)
        toDoTableViewController?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    
