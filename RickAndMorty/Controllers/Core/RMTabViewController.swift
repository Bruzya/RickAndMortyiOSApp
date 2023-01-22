//
//  RMTabViewController.swift
//  RickAndMorty
//
//  Created by Evgeniy Mazrukho on 22.01.2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTab()
    }
    
    private func setUpTab() {
        
        let charactersVC = RMCharacterTViewController()
        let locationsVC = RMCharacterTViewController()
        let episodesVC = RMCharacterTViewController()
        let settingsVC = RMCharacterTViewController()
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        nav1.navigationItem.largeTitleDisplayMode = .automatic
        nav2.navigationItem.largeTitleDisplayMode = .automatic
        nav3.navigationItem.largeTitleDisplayMode = .automatic
        nav4.navigationItem.largeTitleDisplayMode = .automatic
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4],
                           animated: true)
    }
}

