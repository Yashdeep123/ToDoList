//
//  NewViewController.swift
//  Todolist
//
//  Created by Yash Patil on 29/04/22.
//

import UIKit

class NewViewController: UIViewController {
     var todo = ToDo()
    @IBOutlet weak var todolabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if todo.priority == 1
        {
            todolabel.text = "!" + todo.name
        }else if todo.priority == 2
        {
            todolabel.text = "!!" + todo.name
        }else
        {
            todolabel.text = todo.name
        }

        // Do any additional setup after loading the view.
    }
    @IBAction func donetapped(_ sender: Any) {
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
