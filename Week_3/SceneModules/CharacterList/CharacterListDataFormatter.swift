//
//  CharacterListDataFormatter.swift
//  Week_3
//
//  Created by Metin özkan on 18.10.2021.
//

import Foundation
class CharacterListDataFormatter : CharacterListDataFormatterProtocol{
    
    func getItem(from data: CharacterData) -> ItemTableViewCellData {
        return ItemTableViewCellData(imageData: CustomImageViewComponentData(imageUrl: "https://picsum.photos/200/200"), cellInfo: LabelPackComponentData(title: data.name, subTitle: data.description ?? "UNknown  "))
    }
    
}
