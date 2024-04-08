//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Student on 04/04/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
            return [
                Meal(name: "Breakfast", food: [
                    Food(name: "Parantha", description: "Pan-fried"),
                    Food(name: "Toast", description: "White Bread"),
                    Food(name: "Croissant", description: "Baked")
                    ]
                ),
                Meal(name: "Lunch", food: [
                    Food(name: "Soup", description: "Tomato"),
                    Food(name: "Bread", description: "White Bread"),
                    Food(name: "Sandwich", description: "Veggies")
                    ]
                ),
                Meal(name: "Dinner", food: [
                    Food(name: "Dal", description: "Boiled"),
                    Food(name: "Potatoes", description: "Roasted"),
                    Food(name: "Green Beans", description: "Steamed")
                    ]
                )
            ]
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section>meals.count){
            return 0
        }else{
            return meals[section].food.count
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = "\(food.name)"
        content.secondaryText = food.description
        cell.contentConfiguration = content

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
