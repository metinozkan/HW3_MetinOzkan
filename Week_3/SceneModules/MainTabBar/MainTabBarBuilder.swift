//
//  MainTabBarBuilder.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit

class MainTabBarBuilder {
    
    class func build() -> UIViewController {
        
        let mainViewController = MainViewBuilder.build()
        let favoriteViewController = FavoriteViewBuilder.build()
        
        let tabViewController = MainTabBarController()
    
        tabViewController.viewControllers   = [mainViewController ,favoriteViewController ]
        
        
        tabViewController.tabBar.tintColor = .black
        tabViewController.tabBar.backgroundColor = .systemBackground
       
        return tabViewController
    }
    
}
