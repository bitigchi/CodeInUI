//
//  DataSource.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class TableDataSource: NSObject, UITableViewDataSource {
    let cellID = "cell"
    let basicTable = ["This is an example cell"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TableCell
//        cell.textLabel?.text = basicTable[indexPath.row]
        return cell
    }
}

// For a tidy and readable VC, it is essential to refactor the TableView data source into a separate file.
// The only main difference here is we do not use `override`, since we do not override anything.
// Note that we have inherited from `NSObject` and `UITableViewDataSource`.
