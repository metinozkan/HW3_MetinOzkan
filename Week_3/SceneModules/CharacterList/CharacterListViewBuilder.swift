//
//  CharacterListViewBuilder.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//
import UIKit
 
class CharacterListViewBuilder {
    
    class func build() -> UIViewController {
        let viewModel = CharacterListViewModel()
        let viewController = CharacterListViewController(viewModel: viewModel)
        return viewController
    }
    
}
