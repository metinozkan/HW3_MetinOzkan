//
//  CharacterListViewController.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit

class CharacterListViewController: BaseViewController<CharacterListViewModel> {
    
    deinit{
        print("deinit CharacterListViewController")
    }

    private var mainComponent : ItemListView!

    override func prepareViewControllerConfigurations() {
          super.prepareViewControllerConfigurations()
        addmainComponent()
        viewModel.getCharacterList()
        subscribeViewModelListeners()
      }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            self.navigationController?.setNavigationBarHidden(false, animated: true)
        }
          
    private func addmainComponent() {
          //mainComponent = mainComponent()
          mainComponent = ItemListView()
          mainComponent.translatesAutoresizingMaskIntoConstraints = false
          
          mainComponent.delegate = viewModel
          
          view.addSubview(mainComponent)
          
          NSLayoutConstraint.activate([
          
              mainComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor),
              mainComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor),
              mainComponent.topAnchor.constraint(equalTo: view.topAnchor),
              mainComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor)
              
          ])
      }
    
    private func subscribeViewModelListeners() {
          viewModel.subscribeState { [weak self] state in
              switch state {
              case .done:
                  print("Data is ready.")
              case .loading:
                  print("Data is getting.")
              }
          }
      }
      
}

