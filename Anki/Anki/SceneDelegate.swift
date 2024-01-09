//
//  SceneDelegate.swift
//  Anki
//
//  Created by user on 09.01.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            return
        }
        
        window = UIWindow(windowScene: windowScene)
        
        let cardsContainer = CardsContainer.assemble(with: .init())
        
        window?.rootViewController = cardsContainer.viewController
        window?.makeKeyAndVisible()
    }
}
