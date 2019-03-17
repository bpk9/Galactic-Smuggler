//
//  GraphViewController.swift
//  Galactic Smuggler
//
//  Created by Brian Kasper on 3/17/19.
//  Copyright © 2019 Brian P Kasper. All rights reserved.
//

import UIKit

class GraphViewController: UITableViewController
{
    
    var prices: [Double]?
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.prices?.count ?? 0;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GraphCell", for: indexPath) as! GraphCell
        
        cell.time.text = String(indexPath.row) + "Days Ago";
        cell.price.text = "$" + String(self.prices?[indexPath.row] ?? 0.0);
        if (indexPath.row == 0)
        {
            cell.change.isHidden = true;
        }
        else
        {
            let change = (self.prices?[indexPath.row] ?? 0.0) - (self.prices?[indexPath.row - 1] ?? 0.0);
            cell.change.text = String(change);
            if(change > 0)
            {
                cell.change.textColor = UIColor.green;
            }
            else
            {
                cell.change.textColor = UIColor.red;
            }
        }
        
        
        return cell;
    }
    
}
