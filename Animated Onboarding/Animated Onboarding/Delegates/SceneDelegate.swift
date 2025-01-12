//
//  SceneDelegate.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .white
        
        let firstVC = OnboardingVCOne()
        firstVC.view.backgroundColor = .red
        
        let secondVC = OnboardingVCTwo()
        secondVC.view.backgroundColor = .brown
        
        let thirdVC = OnboardingVCThree()
        thirdVC.view.backgroundColor = .systemPink
        
        let navVC = UINavigationController(rootViewController: firstVC)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            navVC.pushViewController(secondVC, animated: true)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
            navVC.pushViewController(thirdVC, animated: true)
        }
        
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
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

