//
//  ItemTableViewCellData.swift
//  Week_3
//
//  Created by Metin özkan on 12.10.2021.
//
class ItemTableViewCellData: GenericDataProtocol {
    
    private(set) var imageData: CustomImageViewComponentData
    private(set) var cellInfo: LabelPackComponentData
    
    init(imageData: CustomImageViewComponentData,
         cellInfo: LabelPackComponentData) {
        self.imageData = imageData
        self.cellInfo = cellInfo
    }
    
} 
