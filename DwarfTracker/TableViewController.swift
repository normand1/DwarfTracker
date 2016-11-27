//
//  TableViewController.swift
//  DwarfTracker
//
//  Created by David Norman on 11/26/16.
//  Copyright © 2016 David Norman. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dwarfArray = [Dwarf]()

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DefaultAPI.getDwarves { (dwarves, error) in
            if let dwarves = dwarves{
                print(dwarves.first!.encodeToJSON())
            }
            
            self.dwarfArray = dwarves!
            self.tableView.reloadData()
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dwarfArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentDwarf = dwarfArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dwarfCell") as! DwarfCell
        
        cell.nameLabel.text = "name: \(currentDwarf.name ?? "")"
        cell.ageLabel.text = "age: \(currentDwarf.age ?? "")"
        cell.idLabel.text = "id: \(currentDwarf.id ?? "")"
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}

class DwarfCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    
}
