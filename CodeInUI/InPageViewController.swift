//
//  InPageViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 12.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class InPageViewController: UIViewController {
    private let labelView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(data: PageData) {
        super.init(nibName: nil, bundle: nil)
        labelView.text = data.dataName
        view.backgroundColor = .systemTeal
        view.addSubview(labelView)
        
        NSLayoutConstraint.activate([
            labelView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            labelView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
