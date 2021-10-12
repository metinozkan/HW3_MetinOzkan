//
//  ItemListView.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import UIKit

class ItemListView: BaseView {

    private lazy var tableView: UITableView = {
         let temp = UITableView()
         temp.translatesAutoresizingMaskIntoConstraints = false
         temp.delegate = self
         temp.dataSource = self
//         temp.register(ItemTableViewCell.self, forCellReuseIdentifier: ItemTableViewCell.identifier)
         return temp
     }()
    
    
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        backgroundColor = .blue
    }
}



extension ItemListView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        return UITableViewCell()  
    }
    
    
}
