//
//  CharacterListViewController.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {

    private var itemListView : ItemListView!

    override func prepareViewControllerConfigurations() {
          super.prepareViewControllerConfigurations()
        addItemListView()
        
      }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
         
    func addItemListView() {
        
        itemListView = ItemListView()
        itemListView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(itemListView)
        
        
        NSLayoutConstraint.activate([
              
            itemListView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            itemListView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            itemListView.topAnchor.constraint(equalTo: view.topAnchor),
            itemListView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                  
              ])
    }
      
}
