//
//  PageViewController.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    let dataArray = [PageData(dataName: "Data"), PageData(dataName: "Lore")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        title = "A fistful of Datas"
        view.backgroundColor = .red
    }
    
    lazy var arrayInPageViewController: [InPageViewController] = {
        var inPageVC = [InPageViewController]()
        for data in dataArray {
            inPageVC.append(InPageViewController(data: data))
        }
        return inPageVC
    }()
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .pageCurl, navigationOrientation: navigationOrientation, options: nil)
        
        self.dataSource = self
        self.delegate = self
        
        self.view.backgroundColor = .systemGray
        self.view.frame(forAlignmentRect: CGRect(x: 100, y: 100, width: 100, height: 100))
        setViewControllers([arrayInPageViewController[0]], direction: .forward, animated: true, completion: nil)
        print(dataArray)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

