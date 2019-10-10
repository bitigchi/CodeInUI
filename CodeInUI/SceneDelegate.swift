//
//  SceneDelegate.swift
//  CodeInUI
//
//  Created by Emir SARI on 8.10.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    var firstVC: UINavigationController!
    var secondVC: UINavigationController!
    var thirdVC: UINavigationController!
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let tabBarController = UITabBarController()
        firstVC = UINavigationController(rootViewController: FirstViewController())
        secondVC = UINavigationController(rootViewController: SecondViewController())
        thirdVC = UINavigationController(rootViewController: ThirdViewController())
        tabBarController.viewControllers = [firstVC, secondVC, thirdVC]
        
        let firstTab = UITabBarItem(title: "First", image: UIImage(systemName: "1.circle"), selectedImage: UIImage(systemName: "1.circle.fill"))
        let secondTab = UITabBarItem(title: "Second", image: UIImage(systemName: "2.circle"), selectedImage: UIImage(systemName: "2.circle.fill"))
        let thirdTab = UITabBarItem(title: "Third", image: UIImage(systemName: "3.circle"), selectedImage: UIImage(systemName: "3.circle.fill"))
        firstVC.tabBarItem = firstTab
        secondVC.tabBarItem = secondTab
        thirdVC.tabBarItem = thirdTab

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        window?.windowScene = windowScene
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

