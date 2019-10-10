//
//  TableCell.swift
//  CodeInUI
//
//  Created by Emir SARI on 10.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    let cellView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let labelView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        contentView.addSubview(cellView)
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            cellView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            cellView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor)])
        cellView.addSubview(labelView)
    }
}
