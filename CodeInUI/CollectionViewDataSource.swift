//
//  DataSource.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class CollectionViewDataSource: NSObject, UICollectionViewDataSource {
    let cellID = "cell"
    let basicTable = ["This is an example cell"]
    
    // Return cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return basicTable.count
    }
    
    // Set cell data source
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CollectionViewCell
        cell.labelView.text = basicTable[indexPath.row]
        return cell
    }
}

// For a tidy and readable VC, it is essential to refactor the CollectionView data source into a separate file.
// The only main difference here is we do not use `override`, since we do not override anything.
// Note that we have inherited from `NSObject` and `UICollectionViewDataSource`.
