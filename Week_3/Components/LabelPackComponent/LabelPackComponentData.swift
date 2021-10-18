//
//  LabelPackComponentData.swift
//  PermissionProject
//
//  Created by Erkut Bas on 26.09.2021.
//

import Foundation
import UIKit

class LabelPackComponentData {
    
    private(set) var title: String
    private(set) var subTitle: String
    private(set) var lineBreakMode:NSLineBreakMode = .byWordWrapping
    private(set) var numberOfLines :Int = 0
    private(set) var contentMode :UIView.ContentMode = .center
    private(set) var textAlignment :NSTextAlignment = .center
    
   
    
    init(title: String = "",
         subTitle: String = "") {
        self.title = title
        self.subTitle = subTitle
    }
    
    
    func setLineBreakMode (by value: NSLineBreakMode) ->Self {
        lineBreakMode = value
        return self
        
    }
    func setNumberOfLines (by value: Int) ->Self {
        numberOfLines = value
        return self
        
    }
    func setContentMode (by value: UIView.ContentMode) ->Self {
        contentMode = value
        return self
        
    }
    
    func setTextAlignment (by value: NSTextAlignment) ->Self {
        textAlignment = value
        return self
        
    }
    
}
