//
//  BrowseTableViewController.swift
//  Recipy
//
//  Created by Ben Swift on 2/19/16.
//  Copyright © 2016 Ben Swift. All rights reserved.
//

import UIKit

class BrowseTableViewController: UITableViewController {
    
    var listArray = [List]()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        navigationController?.navigationBar.barTintColor = UIColor(red: 210/255.0, green: 35/255.0, blue: 35/255.0, alpha: 1.0)
        navigationController?.navigationBar.barStyle = .Black
        navigationItem.titleView = UIImageView(image: UIImage(named: "Recipy"))
        navigationController?.navigationBar.translucent = false
        
        listArray.append(List(foodName: "American Burger", foodType: "American", rating: 5, indgredientsArray: ["test"], recipeArray: ["test"], foodImage: "burger"))
        listArray.append(List(foodName: "Chicken Pad Thai", foodType: "Thai", rating: 4, indgredientsArray: ["test"], recipeArray: ["test"], foodImage: "thai"))
        listArray.append(List(foodName: "Ice Cream Sundae", foodType: "American", rating: 3.5, indgredientsArray: ["test"], recipeArray: ["test"], foodImage: "sundae"))
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...
        let imageViewFood = cell.viewWithTag(1) as! UIImageView
        let mainLabel = cell.viewWithTag(2) as! UILabel
        let ratingLabel = cell.viewWithTag(3) as! UILabel
        
        imageViewFood.image = UIImage(named: listArray[indexPath.row].foodImage)
        mainLabel.text = listArray[indexPath.row].foodName
        ratingLabel.text = "Rating \(listArray[indexPath.row].rating)/5.0"
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
