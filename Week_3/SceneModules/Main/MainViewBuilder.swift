//
//  MainViewBuilder.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit


class MainViewBuilder {
    
    
    class func build () -> UIViewController {
        
        
        let viewModel = MainViewModel()
        
        let viewController = MainViewController(viewModel: viewModel)
        
        return viewController
    }
    
}
