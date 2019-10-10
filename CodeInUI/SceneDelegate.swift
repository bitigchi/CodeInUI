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
    var navigationVC: UINavigationController!

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let mainVC = MainViewController()
        let detailVC = DetailViewController()
        let splitVC = UISplitViewController()
        navigationVC = UINavigationController(rootViewController: mainVC)
        splitVC.viewControllers = [navigationVC, detailVC]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = splitVC
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

