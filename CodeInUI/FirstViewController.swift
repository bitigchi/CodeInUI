//
//  FirstViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = UIView()
        view.backgroundColor = .systemBackground
        
        title = "Bir"
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
        label.text = "First View Controller"
        stackView.addArrangedSubview(label)
    }
}

