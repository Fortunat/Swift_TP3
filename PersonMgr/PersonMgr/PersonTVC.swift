//
//  PersonTVC.swift
//  PersonMgr
//
//  Created by Guest User on 28/02/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import UIKit

class PersonTVC: UITableViewController {
    
 var tabPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // adding data to display
        let p1 = Person(ft: "Ibra", lt: "DIALLO")
        tabPerson.append(p1)
        let p2 = Person(ft: "Fortunat", lt: "HARENA")
        tabPerson.append(p2)
        let p3 = Person(ft: "Pierre", lt: "PD")
        tabPerson.append(p3)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        //Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tabPerson.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        var gen : String
        if tabPerson[indexPath.row].gender == true {
            gen = "Male"
        }
        else {
            gen = "Female"
        }
        
        cell.textLabel?.text = tabPerson[indexPath.row].firstname + " " + tabPerson[indexPath.row].lastname
        cell.detailTextLabel?.text = gen + " - \(tabPerson[indexPath.row].yearOfBirth) old years " + tabPerson[indexPath.row].nationality
        
       // }
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            // Delete the row from the data source
              tabPerson.remove(at: indexPath.row)
           
            // delete component into IHM
            tableView.deleteRows(at: [indexPath], with: .fade)
    
        }
        //   else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
      //  }
    }
    
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
        let itemToMove = tabPerson[fromIndexPath.row]
        tabPerson.remove(at: fromIndexPath.row)
        tabPerson.insert(itemToMove, at: to.row)
        
    }
    
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "pushDetail" {
            let personDetailVC: PersonDetailedVC = segue.destination as!
            PersonDetailedVC
            let indexPath = self.tableView.indexPath(for: sender as!
                UITableViewCell)
           
            //1st: get your person from your array based on your indexPath
            let p = tabPerson[(indexPath?.row)!]
            
            //2nd: give this person to your personDetailVC
            personDetailVC.person = p
            
        }
    }
    

}
