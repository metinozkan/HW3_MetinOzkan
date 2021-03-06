//
//  MainViewController.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import Foundation


extension Selector {
    static let testButtonTapped =  #selector(MainViewController.testButtonAction)
}

import UIKit
class MainViewController:BaseViewController<MainViewModel>{
    
    private lazy var test: UIButton = {
            let temp = UIButton(type: .system)
            temp.translatesAutoresizingMaskIntoConstraints = false
            temp.addTarget(self, action: .testButtonTapped, for: .touchUpInside)
            temp.setTitle("PUSH", for: .normal)
            temp.setTitleColor(.black, for: .normal)
            return temp
        }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
         
        view.backgroundColor = .green
        view.addSubview(test)
        
        NSLayoutConstraint.activate(
        [
            test.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            test.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           self.navigationController?.setNavigationBarHidden(true, animated: true)
       }
       
    
    @objc func testButtonAction(_ sender: UIButton) {
        fireCharacterListView()
//        print("click")
//        let testViewController = TestViewController()
////        self.navigationController?.pushViewController(testViewController, animated: true)
//
//        let newNavController = UINavigationController(rootViewController: testViewController)
//        self.present(newNavController, animated: true, completion:nil  )
    }
    
    
    private func fireCharacterListView () {
        
        let characterListView = CharacterListViewBuilder.build()
        
        self.navigationController?.pushViewController(characterListView, animated: true)
    }
}
