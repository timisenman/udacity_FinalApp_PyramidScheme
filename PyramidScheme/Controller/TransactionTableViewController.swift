//
//  TransactionTableViewController.swift
//  PyramidScheme
//
//  Created by Tim Isenman on 6/13/18.
//  Copyright © 2018 Timothy Isenman. All rights reserved.
//

import UIKit

class TransactionTableViewController: UITableViewController {

    @IBOutlet var recentTransactionsTable: UITableView!
    
    let placeholderCell = ["one","two","three","test"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placeholderCell.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //segue to next view
        
    }

}
