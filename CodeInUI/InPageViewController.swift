//
//  InPageViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 12.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class InPageViewController: UIViewController {
//    private let stackView: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.translatesAutoresizingMaskIntoConstraints = false
//        return stack
//    }()
    
    private let labelView: UILabel = {
        let label = UILabel()
        label.text = "Hebee"
        return label
    }()
    
    
    init(data: PageData) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .systemTeal
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint.init(item: labelView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint.init(item: labelView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0)
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
