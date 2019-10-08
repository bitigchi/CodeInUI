//
//  TableViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataSource = TableDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CodeInUI"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: dataSource.cellID)
        tableView.dataSource = dataSource
    }
}
