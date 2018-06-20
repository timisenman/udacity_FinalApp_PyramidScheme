//
//  CreditCardSelectionViewController.swift
//  PyramidScheme
//
//  Created by Tim Isenman on 6/13/18.
//  Copyright © 2018 Timothy Isenman. All rights reserved.
//

import UIKit

class CreditCardSelectionViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var cardCompanyLogo: UIImageView!
    @IBOutlet weak var creditCardSelectionTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    let placeholderCell = ["one","two","three","test"]
    
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeholderCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Segue to next view...
        
    }


}
