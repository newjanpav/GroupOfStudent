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
    let studentsGroup = [group1, group2, group3, group4, group5]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOfStudents.delegate = self
        tableViewOfStudents.dataSource = self
        
        dropDown.anchorView = contentView
        dropDown.dataSource = ["\(group1.numberOfGroup)", "\(group2.numberOfGroup)",
                               "\(group3.numberOfGroup)","\(group4.numberOfGroup)","\(group5.numberOfGroup)"]
        
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            indexOfItem = index
            print("Selected item: \(item) at index: \(index)")
            currentNameofStudentGroup.setTitle("\(item)", for: .normal)
            tableViewOfStudents.reloadData()
        }
    }
    
    
    @IBAction func showContentView(_ sender: UIButton) {
        dropDown.show()
    }
}

extension ViewController:  UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let safeIndex = indexOfItem else{
            return 20
        }
        return studentsGroup[safeIndex].group.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        var cell: UITableViewCell?
        
        
        cell = tableViewOfStudents.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style:.subtitle, reuseIdentifier: identifier)
            
        }else{
            if indexOfItem != nil {
                cell?.detailTextLabel?.text  = "\(studentsGroup[indexOfItem!].group[indexPath.row])"
                cell?.backgroundColor = .lightGray
                cell?.detailTextLabel?.font = UIFont(name: "@Arial", size: 18.0)
            }

        }
        return cell!
    }

}
