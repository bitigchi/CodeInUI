//
//  TableViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let dataSource = CollectionViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // Setup main view
    func setupView() {
        title = "CodeInUI"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: dataSource.cellID)
        collectionView.dataSource = dataSource
        collectionView.backgroundColor = .systemBackground
    }
    
    // Set cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height / 4)
    }
}
