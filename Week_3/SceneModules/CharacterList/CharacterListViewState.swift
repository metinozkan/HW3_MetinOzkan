//
//  CharacterListViewState.swift
//  Week_3
//
//  Created by Metin özkan on 12.10.2021.
//

import Foundation

typealias CharacterListStateBlock = (CharacterListViewState) -> Void

enum CharacterListViewState {
    
    
    case loading
    case done 
}
 
