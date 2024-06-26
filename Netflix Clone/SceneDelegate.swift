//
//  SceneDelegate.swift
//  Netflix Clone
//
//  Created by Shahriar Ahsan Taisiq on 26/6/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("Scene will connect to session")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = MainTabBarViewController()
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("Scene did disconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("Scene did become active")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("Scene will resign active")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("Scene will enter foreground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("Scene did enter background")
    }
}
