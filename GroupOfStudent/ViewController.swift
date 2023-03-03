//
//  ViewController.swift
//  GroupOfStudent
//
//  Created by Pavel Shymanski on 3.03.23.
//

import UIKit
import DropDown

class ViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var currentNameofStudentGroup: UIButton!
    @IBOutlet weak var tableViewOfStudents: UITableView!
    let dropDown = DropDown()
    var indexOfItem: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func showContentView(_ sender: UIButton) {
        
    }
    

}

