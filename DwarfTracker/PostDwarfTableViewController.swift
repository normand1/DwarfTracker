//
//  PostDwarfTableViewController.swift
//  DwarfTracker
//
//  Created by David Norman on 11/26/16.
//  Copyright © 2016 David Norman. All rights reserved.
//

import UIKit

class PostDwarfTableViewController: UITableViewController {

    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var ageInputField: UITextField!
    @IBOutlet weak var idInputField: UITextField!
    
    @IBAction func postDwarfButtonTouched(_ sender: Any) {
        
        let dwarf = Dwarf()
        dwarf.age = ageInputField.text ?? ""
        dwarf.name = nameInputField.text ?? ""
        dwarf.id = idInputField.text ?? ""
        
        DefaultAPI.postDwarf(payload: dwarf) {_ in 
            let _ = self.navigationController?.popViewController(animated: true)
        }
        
    }
    

}
