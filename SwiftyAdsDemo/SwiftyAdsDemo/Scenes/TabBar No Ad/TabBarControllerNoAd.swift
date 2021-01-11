//
//  TabBarControllerNoAd.swift
//  SwiftyAdsDemo
//
//  Created by Dominik Ringler on 15/11/2020.
//  Copyright © 2020 Dominik Ringler. All rights reserved.
//

import UIKit

final class TabBarControllerNoAd: UITabBarController {

    // MARK: - Properties

    private let swiftyAds: SwiftyAdsType

    // MARK: - Initialization

    init(swiftyAds: SwiftyAdsType) {
        self.swiftyAds = swiftyAds
        super.init(nibName: nil, bundle: nil)
        tabBar.barTintColor = .white
        
        // Create tab view controllers
        let storyboard = UIStoryboard(name: "PlainViewController", bundle: .main)
        let plainVC = storyboard.instantiateInitialViewController() as! PlainViewController
        plainVC.configure(swiftyAds: swiftyAds)
        plainVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
        
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .red
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        // Set view controllers
        viewControllers = [plainVC, secondVC]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
