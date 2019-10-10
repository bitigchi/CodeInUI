//
//  DetailViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 10.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = UIView()
        view.backgroundColor = .systemBackground
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        let label = UILabel()
        label.text = "Detail item"
        stackView.addArrangedSubview(label)
    }
}
