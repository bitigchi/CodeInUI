//
//  CollectionViewCell.swift
//  CodeInUI
//
//  Created by Emir SARI on 11.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    // Add label
    let labelView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemTeal
        return label
    }()
    
    // Set label position
    func setupCell() {
        contentView.addSubview(labelView)
        labelView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        labelView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        labelView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        labelView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
