//
//  SecondViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 10.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = UIView()
        view.backgroundColor = .systemBackground
        
        title = "İki"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        let label = UILabel()
        label.text = "Second View Controller"
        stackView.addArrangedSubview(label)
    }
}
