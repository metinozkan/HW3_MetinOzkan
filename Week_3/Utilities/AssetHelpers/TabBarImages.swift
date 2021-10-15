//
//  TabBarImages.swift  
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//


import UIKit

enum TabBarImages: String, GenericValueProtocol {

    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case home = "home"
    case favorite = "favorite"
    case homeSelected = "homeSelected"
    case favoriteSelected = "favoriteSelected"
    case bug = "bug"
    case bugSelected = "bugSelected"
    
}
