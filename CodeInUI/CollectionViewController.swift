//
//  TableViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    let dataSource = CollectionViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CodeInUI"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // This is the code version of setting the cell identifier in storyboards.
        // For custom cell implementations, create a cell class, and refer to it below
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: dataSource.cellID)
        collectionView.dataSource = dataSource
        collectionView.backgroundColor = .systemBackground
    }
}
