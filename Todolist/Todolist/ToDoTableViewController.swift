//
//  ToDoTableViewController.swift
//  Todolist
//
//  Created by Yash Patil on 15/04/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo]  = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let todo1 = ToDo()
        todo1.name = "Write chapter one of iOS 14 book"
        todo1.priority = 1
        let todo2 = ToDo()
        todo2.name = " Edit iOS 14 book "
        todo2.priority = 2
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
          toDos = [todo1,todo2]
        
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let selectedTodo = toDos[indexPath.row]
        if selectedTodo.priority == 1
        {
            cell.textLabel?.text = "! " + selectedTodo.name
        }else if selectedTodo.priority == 2
        {
            cell.textLabel?.text = "!! " + selectedTodo.name
        }else{
            cell.textLabel?.text = selectedTodo.name
        }
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedtodo = toDos[indexPath.row]
        performSegue(withIdentifier: "moveToDetails", sender: selectedtodo)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if  let addtodoviewcontroller = segue.destination as? AddToDoViewController
        {
            addtodoviewcontroller.toDoTableViewController = self
        }
        if let detailsToDoViewController = segue.destination as? NewViewController
        {
            if let selectedtodo = sender as? ToDo
            {
                detailsToDoViewController.todo = selectedtodo
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
