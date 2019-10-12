//
//  PageViewDataSource.swift
//  CodeInUI
//
//  Created by Emir SARI on 12.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

struct PageData {
    var dataName: String
}

extension PageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? InPageViewController else { return nil }
        if let index = arrayInPageViewController.firstIndex(of: viewController) {
            if index > 0 {
                return arrayInPageViewController[index - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
                guard let viewController = viewController as? InPageViewController else { return nil }
        if let index = arrayInPageViewController.firstIndex(of: viewController) {
            if index > 0 {
                return arrayInPageViewController[index - 1]
            }
        }
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return dataArray.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
