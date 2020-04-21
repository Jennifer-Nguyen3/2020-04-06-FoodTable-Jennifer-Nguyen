//
//  ViewController.swift
//  2020-04-06-FoodTable-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 4/6/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//connect tableview to swift
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //setup data to be served into your tableview
    let foodNameArray = ["Roasted Chicken", "Classic Burger", "Chicken Noodle Soup", "Bow-Tie Pasta", "Pepperoni Pizza", "Italian Salad", "Grilled Steak"]
        
    let foodPriceArray = [13.99, 13.99, 11.99, 12.99, 11.99, 10.99, 15.99]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // define datasource and delegate for tableview
        
        tableView.dataSource = self
        tableView.delegate = self
    }
} //end of class

//start extension outside of class
extension ViewController: UITableViewDataSource, UITableViewDelegate { //option click on the name 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodPriceArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //grab cell through the identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //serve data to the cell
        cell.textLabel? .text = foodNameArray[indexPath.row]
        
        cell.detailTextLabel?.text = "$\(foodPriceArray[indexPath.row])"
        
        //return the cell
        return cell
    }
    
    
}
