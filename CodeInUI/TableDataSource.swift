//
//  TableDataSource.swift
//  CodeInUI
//
//  Created by Emir SARI on 10.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class TableDataSource: NSObject, UITableViewDataSource {
    let cellID = "cell"
    let dataArray = ["Cell 1", "Cell 2", "Cell 3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
}

// For a tidy and readable VC, it is essential to refactor the TableView data source into a separate file.
// The only main difference here is we do not use `override`, since we do not override anything.
// Note that we have inherited from `NSObject` and `UITableViewDataSource`.
